package cn.swun;

import cn.swun.domain.Custom;

import javax.persistence.*;
import java.util.List;

public class Test {

    @org.junit.Test
    public void test(){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("myJpa");
        EntityManager em = factory.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        tx.begin();
        Custom c = new Custom();
        c.setCustName("huang");
        em.persist(c);
        tx.commit();
        em.close();
        factory.close();
    }

    @org.junit.Test
    public void findAll(){
        EntityManagerFactory factory = Persistence.createEntityManagerFactory("myJpa");
        EntityManager em = factory.createEntityManager();
        EntityTransaction tx = em.getTransaction();
        try {
            //获取实体管理对象
            //获取事务对象

            tx.begin();
            // 创建query对象
            String jpql = "from Custom";
            Query query = em.createQuery(jpql);
            // 查询并得到返回结果
            List list = query.getResultList(); // 得到集合返回类型
            for (Object object : list) {
                System.out.println(object);
            }
            tx.commit();
        } catch (Exception e) {
            // 回滚事务
            tx.rollback();
            e.printStackTrace();
        } finally {
            // 释放资源
            em.close();
        }
    }
}
