package com.example.movieforum;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.movieforum.entity.*;
import com.example.movieforum.mapper.*;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;
import org.apache.mahout.cf.taste.common.TasteException;
import org.apache.mahout.cf.taste.impl.model.jdbc.MySQLJDBCDataModel;
import org.apache.mahout.cf.taste.impl.neighborhood.ThresholdUserNeighborhood;
import org.apache.mahout.cf.taste.impl.recommender.GenericUserBasedRecommender;
import org.apache.mahout.cf.taste.impl.similarity.PearsonCorrelationSimilarity;
import org.apache.mahout.cf.taste.model.DataModel;
import org.apache.mahout.cf.taste.neighborhood.UserNeighborhood;
import org.apache.mahout.cf.taste.recommender.RecommendedItem;
import org.apache.mahout.cf.taste.recommender.UserBasedRecommender;
import org.apache.mahout.cf.taste.similarity.UserSimilarity;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.*;

@SpringBootTest
class MovieForumApplicationTests {

    @Autowired
    MovieMapper movieMapper;

    @Autowired
    MovieCommentsMapper movieCommentsMapper;

    @Autowired
    UserMapper userMapper;

    @Autowired
    PostMapper postMapper;

    @Autowired
    PreferenceMapper preferenceMapper;

    @Autowired
    UserPreferenceMapper userPreferenceMapper;

    @Test
    void contextLoads() {
        System.out.println("Hello");
    }

    @Test
    void 分页查询() {
        // 第一页 每页显示10条
        // 第4页 每页显示8条
        // 第2页 每页显示5条 所有性别为男
        IPage<Movie> page = new Page<Movie>(2, 5);
        QueryWrapper<Movie> qw = new QueryWrapper<Movie>();
        // 调用分页查询
        IPage<Movie> movieIPage = movieMapper.selectPage(page, qw);
        // 总页数
        long pages = movieIPage.getPages();
        System.out.println("pages = " + pages);
        // 总记录数
        long total = movieIPage.getTotal();
        System.out.println("total = " + total);
        // 查询结果
        List<Movie> records = movieIPage.getRecords();
        System.out.println("records = " + records);
    }

    @Test
    void 获取电影字段() throws IllegalAccessException {
        Movie movie = movieMapper.selectById(1);
        Map<String, Object> map = new LinkedHashMap<String, Object>();
        Class<?> clazz = movie.getClass();
        System.out.println(clazz);
        for (Field field : clazz.getDeclaredFields()) {
            field.setAccessible(true);
            String fieldName = field.getName();
            Object value = field.get(movie);
            if (value == null){
                value = "";
            }
            map.put(fieldName, value);
        }
        System.out.println("map = " + map);
    }

    @Test
    void 测试随机获取(){
        QueryWrapper<Movie> qw = new QueryWrapper<Movie>();
        List<Movie> movieList = movieMapper.selectList(qw);
        Random random = new Random();
        ArrayList<Movie> movies = new ArrayList<>();

        // 随机获取8部电影
        int size = movieList.size();
        Set<Integer> set = new HashSet<Integer>();
        for (int i = 0; i < 8; i++) {
            // 只用nextInt()会出现重复
            int tmp = random.nextInt(size);
            while (set.contains(tmp)){
                tmp = random.nextInt(size);
            }
            set.add(tmp);
            // 处理电影片名和译名
            Movie tmp_movie = movieList.get(tmp);
            //片名
            String name = tmp_movie.getName();
            name = name.split("/")[0];
            //译名
            String translatename = tmp_movie.getTranslatename();
            translatename = translatename.split("/")[0];

            tmp_movie.setName(name);
            tmp_movie.setTranslatename(translatename);

            System.out.println("tmp_movie = " + tmp_movie);

            movies.add(tmp_movie);
        }

        // 随机获取10部电影
//        ArrayList<Movie> movies2 = new ArrayList<>();
//        set.clear();
//        for (int i = 0; i < 10; i++) {
//            // 只用nextInt()会出现重复
//            int tmp = random.nextInt(size);
//            while (set.contains(tmp)){
//                tmp = random.nextInt(size);
//            }
//            set.add(tmp);
//            // 处理电影名称和日期
//            Movie tmp_movie = movieList.get(tmp);
//            String name = tmp_movie.getName();
//
//            movies2.add(tmp_movie);
//        }
    }


    @Test
    void a(){
        // 参数
        int movieid=20;
        String context="adhjshkjdahjsdvhsdkljavhsdjk";
        User user = new User();
        user.setId(1);
        user.setName("jjjjjjj");
        LocalDate date = LocalDate.now(); // get the current date
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy");

        // 根据参数构造movieComment对象
        MovieComments movieComments = new MovieComments();
        movieComments.setMovieid(movieid);
        movieComments.setUserid(user.getId());
        movieComments.setUsername(user.getName());
        movieComments.setContext(context);
        movieComments.setTime(date.format(formatter));

        // 插入数据库
        movieCommentsMapper.insert(movieComments);

    }

    @Test
    void 查询用户(){
        String phone = "15252523636";
        String password = "123456";

        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("phone", phone);
        queryWrapper.eq("password", password);
        User user = userMapper.selectOne(queryWrapper);

        System.out.println("user = " + user.getId());

    }
    @Test
    void 筛选帖子(){
        int userid=3;
        QueryWrapper<Post> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("userid",userid );
        List<Post> posts = postMapper.selectList(queryWrapper);
        System.out.println("posts = " + posts);
    }

    @Test
    void 更新偏好() {
        Integer userid = 1;
        Integer movieid = 1;
        Double weight = 0.5;
        QueryWrapper<Preference> qw = new QueryWrapper<>();

        // 先检查记录是否存在
        qw.eq("userid", userid);
        qw.eq("movieid", movieid);
        Preference preference = preferenceMapper.selectOne(qw);

        if (preference != null) { // 更新
            Double pref = preference.getPreference() + weight;
            preference.setPreference(pref);
            preferenceMapper.updateById(preference);
        } else {      // 增加
            preference = new Preference();
            preference.setUserid(userid);
            preference.setMovieid(movieid);
            preference.setPreference(weight);

            preferenceMapper.insert(preference);
        }
    }

    @Test
    void 测试记录用户推荐(){
        int userid = 1;
        int movieId = 2;
        QueryWrapper<Movie> movie_qw = new QueryWrapper<>();
        movie_qw.eq("id", movieId);
        Movie movie = movieMapper.selectOne(movie_qw);

        // 先检查记录是否存在
        UserPreference userPreference = userPreferenceMapper.selectById(userid);
        if(userPreference != null){ // 更新
            StringBuilder result_kinds = new StringBuilder(userPreference.getKinds());
            String u_kinds = result_kinds.toString();
            String m_kinds = movie.getKinds();
            String[] split = u_kinds.split("/");
            String[] movie_kinds = m_kinds.split("/");

            for (String kind: movie_kinds) {
                boolean has = false;
                // 查重
                for (String kin: split) {
                    if(kin.equals(kind)){
                        has = true;
                        break;
                    }
                }
                if (!has){
                    result_kinds.append("/").append(kind);
                }
            }

            userPreference.setKinds(result_kinds.toString());
            userPreferenceMapper.updateById(userPreference);

        }else{  // 插入
            UserPreference tmp = new UserPreference();
            tmp.setUserid(userid);
            tmp.setKinds(movie.getKinds());

            userPreferenceMapper.insert(tmp);
        }

    }

    @Test
    void 测试根据用户偏好获取电影(){
        int userid = 1;

        UserPreference userPreference = userPreferenceMapper.selectById(userid);
        String[] kinds = userPreference.getKinds().split("/");
        ArrayList<Movie> recommend_movies = new ArrayList<>();
        Set<Integer> set = new HashSet<Integer>();
        Random random = new Random();
        // 推荐kinds.length部，最多10部
        QueryWrapper<Movie> movieQueryWrapper = new QueryWrapper<>();;
        for (String kind: kinds){
            movieQueryWrapper.like("kinds", kind);
            List<Movie> movies = movieMapper.selectList(movieQueryWrapper);
            // 每个类型随机取一部;
            int tmp = random.nextInt(movies.size());
            if (set.contains(movies.get(tmp).getId())){
                set.add(movies.get(tmp).getId());
                continue;       // 已经有同类型的跳过
            }
            set.add(movies.get(tmp).getId());
            recommend_movies.add(movies.get(tmp));

        }
        System.out.println("recommend_movies = " + recommend_movies);
    }

    @Test
    void 测试协同过滤用户推荐() throws TasteException, ClassNotFoundException {
        int userId = 4;
        int n = 2;

        MysqlDataSource dataSource = new MysqlDataSource();
        dataSource.setServerName("47.115.205.250");//本地为localhost
        dataSource.setUser("movie_forum");
        dataSource.setPassword("movie_forum");
        dataSource.setDatabaseName("movie_forum");//数据库名

        //获取模型
        DataModel model = new MySQLJDBCDataModel(dataSource, "preference_table", "userid",
                "movieid", "preference", "timestamp");
        UserSimilarity similarity = new PearsonCorrelationSimilarity(model);
        UserNeighborhood neighborhood = new ThresholdUserNeighborhood(3.0, similarity, model);
        UserBasedRecommender recommender = new GenericUserBasedRecommender(model, neighborhood, similarity);
        List<RecommendedItem> recommendations = recommender.recommend(userId, 3);

        for (RecommendedItem recommendation : recommendations) {
            System.out.println(recommendation);
        }

        /*
        *
                //用户相似度，多种方法
                //皮尔逊相关系数,未引入权重,同余弦相似度
                //UserSimilarity similarity = new PearsonCorrelationSimilarity(model);
                // 皮尔逊相关系数,引入了权重
                //UserSimilarity similarity = new PearsonCorrelationSimilarity(model,Weighting.WEIGHTED);
                // 欧式距离定义相似度
                //UserSimilarity similarity = new EuclideanDistanceSimilarity(model);
                // 斯皮尔曼相关系数
                //UserSimilarity similarity = new SpearmanCorrelationSimilarity(model);
                // 斯皮尔曼相关系数 缓存级别的
                //UserSimilarity similarity = new CachingUserSimilarity(new SpearmanCorrelationSimilarity(model), model);
                // 谷本系数（忽略偏好值的）
                // UserSimilarity similarity = new TanimotoCoefficientSimilarity(model);
                // 对数似然法
                UserSimilarity similarity = new LogLikelihoodSimilarity(model);
                //用户邻居
                UserNeighborhood neighborhood = new NearestNUserNeighborhood(2, similarity, model);
        * */

//        //计算相似度
//        UserSimilarity similarity1 = new PearsonCorrelationSimilarity(model);
//        UserSimilarity similarity2 = new PearsonCorrelationSimilarity(model, Weighting.WEIGHTED);
//        UserSimilarity similarity3 = new EuclideanDistanceSimilarity(model);
//        UserSimilarity similarity4 = new SpearmanCorrelationSimilarity(model);
//        // 谷本系数（忽略偏好值的）
//         UserSimilarity similarity5 = new TanimotoCoefficientSimilarity(model);
//        // 对数似然法
//        UserSimilarity similarity6 = new LogLikelihoodSimilarity(model);
//
//        //计算阈值,选择邻近的2个用户
//        UserNeighborhood neighborhood = new ThresholdUserNeighborhood(3.0, similarity1, model);
//
//        //推荐集合
//        Recommender recommender = new GenericUserBasedRecommender(model,neighborhood,similarity1);
//
//        List<RecommendedItem> recommendedItems = recommender.recommend(userId,n);
//
//        System.out.println("recommendedItems = " + recommendedItems);

        /*
        * //推荐数量 为n的一个合集,这里数量可以修改
        List<RecommendedItem> recommendedItems = recommender.recommend(userId,n);
        int kl_idArray[] = new int[recommendedItems.size()];
        for (int i=0;i<recommendedItems.size();i++){
            kl_idArray[i] = (int) recommendedItems.get(i).getItemID();
        }
        //下面是测试用的代码
        for (RecommendedItem recommendation : recommendedItems) {
            System.out.println(recommendation);
        }
        System.out.println("-------------");

        for (int i= 0;i<kl_idArray.length;i++){
            System.out.println(kl_idArray[i]);
        }
        *
        * */

    }
}
