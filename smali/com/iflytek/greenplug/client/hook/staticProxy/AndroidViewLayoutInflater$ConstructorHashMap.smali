.class public Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap;
.super Ljava/util/HashMap;
.source "AndroidViewLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConstructorHashMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    .local p0, "this":Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap;, "Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap;, "Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater;->access$000()Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 49
    const-class v1, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater;->access$002(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    :cond_0
    move-object v0, p2

    .line 51
    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 54
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/view/View;>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {}, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater;->access$000()Ljava/lang/ClassLoader;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 55
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 57
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method
