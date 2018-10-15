.class public Lcn/richinfo/dm/util/SPUtils;
.super Ljava/lang/Object;


# static fields
.field public static final CONFIG_DM:Ljava/lang/String; = "config_dm"

.field public static final KEY_REGISITER_MD5:Ljava/lang/String; = "KEY_REGISITER_MD5"

.field public static final KEY_REPORT_SUCCESS_TIME:Ljava/lang/String; = "KEY_REPORT_SUCCESS_TIME"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRegMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "config_dm"

    const-string/jumbo v1, "KEY_REGISITER_MD5"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcn/richinfo/dm/util/SharedPreferencesUtils;->getValueInPrivateMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getReportSuccessTime(Landroid/content/Context;)J
    .locals 4

    const-wide/16 v0, 0x0

    const-string/jumbo v2, "config_dm"

    const-string/jumbo v3, "KEY_REPORT_SUCCESS_TIME"

    invoke-static {p0, v2, v3, v0, v1}, Lcn/richinfo/dm/util/SharedPreferencesUtils;->getValueInPrivateMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static saveRegMD5(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "KEY_REGISITER_MD5"

    const-string/jumbo v1, "config_dm"

    invoke-static {p0, v0, p1, v1}, Lcn/richinfo/dm/util/SharedPreferencesUtils;->setValueInPrivateMode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static saveReportSuccessTime(Landroid/content/Context;J)V
    .locals 3

    const-string/jumbo v0, "KEY_REPORT_SUCCESS_TIME"

    const-string/jumbo v1, "config_dm"

    invoke-static {p0, v0, p1, p2, v1}, Lcn/richinfo/dm/util/SharedPreferencesUtils;->setValueInPrivateMode(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method
