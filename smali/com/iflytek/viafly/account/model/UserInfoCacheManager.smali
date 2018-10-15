.class public Lcom/iflytek/viafly/account/model/UserInfoCacheManager;
.super Ljava/lang/Object;
.source "UserInfoCacheManager.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDBHelper:Lcom/iflytek/viafly/account/model/UserInfoDBHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string/jumbo v0, "UserInfoCacheManager"

    iput-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->TAG:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;

    invoke-direct {v0, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->mDBHelper:Lcom/iflytek/viafly/account/model/UserInfoDBHelper;

    .line 21
    return-void
.end method

.method private clearUserInfos()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->mDBHelper:Lcom/iflytek/viafly/account/model/UserInfoDBHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->deleteRecords()V

    .line 79
    return-void
.end method


# virtual methods
.method public getDefaultUserInfo()Lcom/iflytek/viafly/account/entity/User;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->mDBHelper:Lcom/iflytek/viafly/account/model/UserInfoDBHelper;

    invoke-virtual {v0}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getDeaultUserInfo()Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoByToken(Ljava/lang/String;)Lcom/iflytek/viafly/account/entity/User;
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->mDBHelper:Lcom/iflytek/viafly/account/model/UserInfoDBHelper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->getUserInfoByToken(Ljava/lang/String;)Lcom/iflytek/viafly/account/entity/User;

    move-result-object v0

    goto :goto_0
.end method

.method public saveUserInfo(Lcom/iflytek/viafly/account/entity/User;)I
    .locals 3
    .param p1, "user"    # Lcom/iflytek/viafly/account/entity/User;

    .prologue
    const/4 v2, 0x0

    .line 24
    const-string/jumbo v0, "UserInfoCacheManager"

    const-string/jumbo v1, "saveUserInfo "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    if-eqz p1, :cond_2

    .line 26
    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    const-string/jumbo v0, "UserInfoCacheManager"

    const-string/jumbo v1, "saveUserInfo save user info"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->mDBHelper:Lcom/iflytek/viafly/account/model/UserInfoDBHelper;

    invoke-virtual {p1}, Lcom/iflytek/viafly/account/entity/User;->getPhoneNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->isUserExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    const-string/jumbo v0, "UserInfoCacheManager"

    const-string/jumbo v1, "saveUserInfo insertRecord"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0}, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->clearUserInfos()V

    .line 32
    iget-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->mDBHelper:Lcom/iflytek/viafly/account/model/UserInfoDBHelper;

    invoke-virtual {v0, v2, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->insertRecord(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/account/entity/User;)I

    move-result v0

    .line 42
    :goto_0
    return v0

    .line 34
    :cond_0
    const-string/jumbo v0, "UserInfoCacheManager"

    const-string/jumbo v1, "saveUserInfo updateRecord"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->mDBHelper:Lcom/iflytek/viafly/account/model/UserInfoDBHelper;

    invoke-virtual {v0, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->updateRecord(Lcom/iflytek/viafly/account/entity/User;)I

    move-result v0

    goto :goto_0

    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->clearUserInfos()V

    .line 39
    iget-object v0, p0, Lcom/iflytek/viafly/account/model/UserInfoCacheManager;->mDBHelper:Lcom/iflytek/viafly/account/model/UserInfoDBHelper;

    invoke-virtual {v0, v2, p1}, Lcom/iflytek/viafly/account/model/UserInfoDBHelper;->insertRecord(Landroid/database/sqlite/SQLiteDatabase;Lcom/iflytek/viafly/account/entity/User;)I

    move-result v0

    goto :goto_0

    .line 42
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method
