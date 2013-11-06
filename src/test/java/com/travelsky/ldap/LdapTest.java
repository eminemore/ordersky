package com.travelsky.ldap;


import java.util.Hashtable;
import javax.naming.Context;
import javax.naming.NamingException;
import javax.naming.directory.Attributes;
import javax.naming.directory.DirContext;
import javax.naming.directory.InitialDirContext;

public class LdapTest {
    public void JNDILookup() {
        String root = "o=teemlink,c=cn";
        Hashtable env = new Hashtable();
        env.put(Context.INITIAL_CONTEXT_FACTORY, "com.sun.jndi.ldap.LdapCtxFactory");
        env.put(Context.PROVIDER_URL, "ldap://10.123.78.229/");
        env.put(Context.SECURITY_AUTHENTICATION, "Anonymous");
        DirContext ctx = null;

        try {
            ctx = new InitialDirContext(env);
            System.out.println("认证成功");
        } catch (javax.naming.AuthenticationException e) {
            e.printStackTrace();
            System.out.println("认证失败");
        } catch (Exception e) {
            System.out.println("认证出错：");
            e.printStackTrace();
        }
        if (ctx != null) {
            try {
                ctx.close();
            } catch (NamingException e) {
                // ignore
            }
        }
    }

    public static void main(String[] args) {
        LdapTest LDAPTest = new LdapTest();
        LDAPTest.JNDILookup();
    }
}