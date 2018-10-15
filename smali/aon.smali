.class public Laon;
.super Ljava/lang/Object;
.source "UpLoadDeviceInfoHelper.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "UpLoadDeviceInfoHelper"

    iput-object v0, p0, Laon;->a:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "000000"

    iput-object v0, p0, Laon;->b:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "success"

    iput-object v0, p0, Laon;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 31
    const-string/jumbo v1, ""

    .line 32
    .local v1, "imei":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 33
    .local v2, "imsi":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 34
    .local v3, "token":Ljava/lang/String;
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lhl;->a(Landroid/content/Context;)Lhl;

    move-result-object v4

    invoke-virtual {v4}, Lhl;->j()Lcom/iflytek/yd/business/AppConfig;

    move-result-object v0

    .line 35
    .local v0, "config":Lcom/iflytek/yd/business/AppConfig;
    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getIMEI()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v0}, Lcom/iflytek/yd/business/AppConfig;->getIMSI()Ljava/lang/String;

    move-result-object v2

    .line 39
    :cond_0
    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Landroid/content/Context;)Lcom/iflytek/common/cmccauth/CmccAuthentication;

    move-result-object v4

    sget-object v5, Lcom/iflytek/common/adaptation/entity/SimCard;->auto:Lcom/iflytek/common/adaptation/entity/SimCard;

    invoke-virtual {v4, v5}, Lcom/iflytek/common/cmccauth/CmccAuthentication;->a(Lcom/iflytek/common/adaptation/entity/SimCard;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 44
    :cond_2
    new-instance v4, Laom;

    invoke-static {}, Lcom/iflytek/viafly/ViaFlyApp;->a()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Laon$1;

    invoke-direct {v6, p0}, Laon$1;-><init>(Laon;)V

    invoke-direct {v4, v5, v6}, Laom;-><init>(Landroid/content/Context;Lyn;)V

    .line 68
    invoke-virtual {v4}, Laom;->a()J

    goto :goto_0
.end method
