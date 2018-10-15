.class public Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater;
.super Ljava/lang/Object;
.source "AndroidViewLayoutInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap;
    }
.end annotation


# static fields
.field private static final android_view_LayoutInflater_sConstructorMap:Ljava/lang/String; = "sConstructorMap"

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static systemClassloader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater;->systemClassloader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0
    .param p0, "x0"    # Ljava/lang/ClassLoader;

    .prologue
    .line 12
    sput-object p0, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater;->systemClassloader:Ljava/lang/ClassLoader;

    return-object p0
.end method

.method public static installPluginCustomViewConstructorCache()V
    .locals 6

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 34
    .local v1, "cache":Ljava/util/Map;
    :try_start_0
    const-class v4, Landroid/view/LayoutInflater;

    const-string/jumbo v5, "sConstructorMap"

    invoke-static {v4, v5}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readStaticField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/Map;

    move-object v1, v0

    .line 35
    if-eqz v1, :cond_0

    .line 36
    new-instance v3, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap;

    invoke-direct {v3}, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap;-><init>()V

    .line 37
    .local v3, "newCacheMap":Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap;, "Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap<Ljava/lang/String;Ljava/lang/reflect/Constructor<+Landroid/view/View;>;>;"
    invoke-virtual {v3, v1}, Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap;->putAll(Ljava/util/Map;)V

    .line 38
    const-class v4, Landroid/view/LayoutInflater;

    const-string/jumbo v5, "sConstructorMap"

    invoke-static {v4, v5, v3}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeStaticField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v3    # "newCacheMap":Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap;, "Lcom/iflytek/greenplug/client/hook/staticProxy/AndroidViewLayoutInflater$ConstructorHashMap<Ljava/lang/String;Ljava/lang/reflect/Constructor<+Landroid/view/View;>;>;"
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
