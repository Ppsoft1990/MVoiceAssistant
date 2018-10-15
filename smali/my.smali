.class public Lmy;
.super Ljava/lang/Object;
.source "AuthBlcHelper.java"


# static fields
.field private static a:Lmy;

.field private static d:Landroid/content/Context;


# instance fields
.field private b:Lyo;

.field private c:Lhl;

.field private e:Lne;

.field private f:Lnf;

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/iflytek/common/adaptation/entity/SimCard;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lyn;

.field private j:Lcom/iflytek/yd/http/interfaces/HttpContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    new-instance v0, Lmy$1;

    invoke-direct {v0, p0}, Lmy$1;-><init>(Lmy;)V

    iput-object v0, p0, Lmy;->i:Lyn;

    .line 167
    new-instance v0, Lmy$2;

    invoke-direct {v0, p0}, Lmy$2;-><init>(Lmy;)V

    iput-object v0, p0, Lmy;->j:Lcom/iflytek/yd/http/interfaces/HttpContext;

    .line 61
    invoke-static {p1}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v0

    iput-object v0, p0, Lmy;->c:Lhl;

    .line 62
    iget-object v0, p0, Lmy;->i:Lyn;

    iget-object v1, p0, Lmy;->j:Lcom/iflytek/yd/http/interfaces/HttpContext;

    iget-object v2, p0, Lmy;->c:Lhl;

    .line 63
    invoke-virtual {v2}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v2

    const-string/jumbo v3, "http://ydclient.voicecloud.cn/auth/do"

    .line 62
    invoke-static {v0, v1, v2, v3}, Lxv;->a(Lyn;Lcom/iflytek/yd/http/interfaces/HttpContext;Lcom/iflytek/yd/business/AppConfig;Ljava/lang/String;)Lyo;

    move-result-object v0

    iput-object v0, p0, Lmy;->b:Lyo;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmy;->g:Ljava/util/HashMap;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmy;->h:Ljava/util/HashMap;

    .line 66
    const-string/jumbo v0, "AuthBlcHelper"

    const-string/jumbo v1, "AuthBlcManager URL=http://ydclient.voicecloud.cn/auth/do"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method static synthetic a(Lmy;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmy;

    .prologue
    .line 32
    iget-object v0, p0, Lmy;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lmy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lmy;->a:Lmy;

    if-nez v0, :cond_0

    .line 54
    sput-object p0, Lmy;->d:Landroid/content/Context;

    .line 55
    new-instance v0, Lmy;

    sget-object v1, Lmy;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lmy;->a:Lmy;

    .line 57
    :cond_0
    sget-object v0, Lmy;->a:Lmy;

    return-object v0
.end method

.method static synthetic b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lmy;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lmy;)Lnf;
    .locals 1
    .param p0, "x0"    # Lmy;

    .prologue
    .line 32
    iget-object v0, p0, Lmy;->f:Lnf;

    return-object v0
.end method

.method static synthetic c(Lmy;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lmy;

    .prologue
    .line 32
    iget-object v0, p0, Lmy;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic d(Lmy;)Lne;
    .locals 1
    .param p0, "x0"    # Lmy;

    .prologue
    .line 32
    iget-object v0, p0, Lmy;->e:Lne;

    return-object v0
.end method

.method static synthetic e(Lmy;)Lhl;
    .locals 1
    .param p0, "x0"    # Lmy;

    .prologue
    .line 32
    iget-object v0, p0, Lmy;->c:Lhl;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lmy;->b:Lyo;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lmy;->b:Lyo;

    invoke-interface {v0}, Lyo;->a()V

    .line 112
    :cond_0
    return-void
.end method

.method public a(Lne;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;)V
    .locals 10
    .param p1, "listener"    # Lne;
    .param p2, "randomCode"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;

    .prologue
    .line 93
    iput-object p1, p0, Lmy;->e:Lne;

    .line 94
    const-string/jumbo v0, "com.iflytek.lms.lxtelsdkmanager"

    invoke-static {v0}, Lro;->a(Ljava/lang/String;)Lcom/iflytek/framework/lms/LmsCallInfo;

    move-result-object v6

    .line 95
    .local v6, "callInfo":Lcom/iflytek/framework/lms/LmsCallInfo;
    const/4 v4, 0x0

    .line 96
    .local v4, "appKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 97
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 98
    invoke-virtual {v6}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppkey()Ljava/lang/String;

    move-result-object v4

    .line 99
    invoke-virtual {v6}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    .line 101
    :cond_0
    iget-object v0, p0, Lmy;->b:Lyo;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-interface/range {v0 .. v5}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 102
    .local v8, "requestId":J
    iget-object v0, p0, Lmy;->g:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-void
.end method

.method public a(Lnf;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/common/adaptation/entity/SimCard;I)V
    .locals 10
    .param p1, "listener"    # Lnf;
    .param p2, "randomCode"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "imsi"    # Ljava/lang/String;
    .param p5, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p6, "mode"    # I

    .prologue
    .line 74
    const-string/jumbo v0, "com.iflytek.lms.lxtelsdkmanager"

    invoke-static {v0}, Lro;->a(Ljava/lang/String;)Lcom/iflytek/framework/lms/LmsCallInfo;

    move-result-object v7

    .line 75
    .local v7, "callInfo":Lcom/iflytek/framework/lms/LmsCallInfo;
    if-eqz p2, :cond_1

    .line 76
    const/4 v4, 0x0

    .line 77
    .local v4, "appKey":Ljava/lang/String;
    const/4 v5, 0x0

    .line 78
    .local v5, "packageName":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 79
    invoke-virtual {v7}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppkey()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-virtual {v7}, Lcom/iflytek/framework/lms/LmsCallInfo;->getAppPackageName()Ljava/lang/String;

    move-result-object v5

    .line 82
    :cond_0
    iget-object v0, p0, Lmy;->b:Lyo;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move/from16 v6, p6

    invoke-interface/range {v0 .. v6}, Lyo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide v8

    .line 83
    .local v8, "requestId":J
    iget-object v0, p0, Lmy;->h:Ljava/util/HashMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lmy;->f:Lnf;

    .line 86
    .end local v4    # "appKey":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "requestId":J
    :cond_1
    return-void
.end method
