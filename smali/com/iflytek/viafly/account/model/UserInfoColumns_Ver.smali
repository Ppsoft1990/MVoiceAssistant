.class public Lcom/iflytek/viafly/account/model/UserInfoColumns_Ver;
.super Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;
.source "UserInfoColumns_Ver.java"

# interfaces
.implements Lcom/iflytek/viafly/schedule/framework/data/IDatabaseUpgradeHandler;


# static fields
.field public static final DB_EXTEND_FIELD:Ljava/lang/String; = "extend_field"

.field public static final DB_HAS_PROFILE_COMPLETE:Ljava/lang/String; = "has_profile_complete"

.field public static final DB_HAS_SET_VOICE_PRINT:Ljava/lang/String; = "has_set_voice_print"

.field public static final DB_ID:Ljava/lang/String; = "id"

.field public static final DB_LOGIN_STATE:Ljava/lang/String; = "login_state"

.field public static final DB_NICK_NAME:Ljava/lang/String; = "nick_name"

.field public static final DB_PHONE_NUM:Ljava/lang/String; = "phone_num"

.field public static final DB_PORTRAIT_LOCAL_PATH:Ljava/lang/String; = "portrait_local_path"

.field public static final DB_PORTRAIT_URL:Ljava/lang/String; = "portrait_url"

.field public static final DB_TEST_ADD_FIELD:Ljava/lang/String; = "add_field"

.field public static final DB_TEST_ADD_FIELD_V2:Ljava/lang/String; = "add_field_v2"

.field public static final DB_TOKEN:Ljava/lang/String; = "token"

.field public static final DB_TOKEN_EXPIRE_TIME:Ljava/lang/String; = "token_expire_time"

.field public static final DB_TOKEN_SOURCE:Ljava/lang/String; = "token_source"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/data/AbstractDatabaseUpgradeHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public convertDataToMap(Landroid/database/Cursor;)Ljava/util/List;
    .locals 1
    .param p1, "cusor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onUpgrade(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "databaseMap":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method
