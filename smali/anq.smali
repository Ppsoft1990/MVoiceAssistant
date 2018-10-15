.class public Lanq;
.super Ljava/lang/Object;
.source "MapAbilityFactory.java"


# static fields
.field private static a:Lanq;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lanq;->a:Lanq;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lanq;->b:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lanq;->b:Landroid/content/Context;

    .line 30
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lanq;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    const-class v1, Lanq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lanq;->a:Lanq;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Lanq;

    invoke-direct {v0, p0}, Lanq;-><init>(Landroid/content/Context;)V

    sput-object v0, Lanq;->a:Lanq;

    .line 25
    :cond_0
    sget-object v0, Lanq;->a:Lanq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lanr;
    .locals 6
    .param p1, "appItem"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 33
    if-nez p1, :cond_1

    .line 44
    :cond_0
    :goto_0
    return-object v2

    .line 36
    :cond_1
    const-string/jumbo v3, "MapAblityFactory"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getMapAbility(), appItem is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const-string/jumbo v3, "appName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "appName":Ljava/lang/String;
    const-string/jumbo v3, "packageName"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "packageName":Ljava/lang/String;
    const-string/jumbo v3, "\u767e\u5ea6\u5730\u56fe"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "com.baidu.BaiduMap"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 41
    :cond_2
    new-instance v2, Lanp;

    iget-object v3, p0, Lanq;->b:Landroid/content/Context;

    invoke-direct {v2, v3}, Lanp;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method
