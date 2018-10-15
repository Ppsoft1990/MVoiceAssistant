.class public Lcom/iflytek/blc/push/PushSetting;
.super Ljava/lang/Object;


# static fields
.field public static final FLYSETTING:Ljava/lang/String; = "blcpush_setting"

.field public static final IFLY_LAST_REQUEST_NOTICE_STATE:Ljava/lang/String; = "com.iflytek.blc.push.IFLY_LAST_REQUEST_NOTICE_STATE"

.field public static final IFLY_LAST_REQUEST_NOTICE_TIME:Ljava/lang/String; = "com.iflytek.blc.push.IFLY_LAST_REQUEST_NOTICE_TIME"

.field public static final IFLY_NEXT_REQUEST_NOTICE_TIME:Ljava/lang/String; = "com.iflytek.blc.push.IFLY_NEXT_REQUEST_NOTICE_TIME"

.field public static final IFLY_REQUEST_NOTICE_SWITCH:Ljava/lang/String; = "com.iflytek.blc.push.IFLY_REQUEST_NOTICE_SWITCH"

.field private static d:Lcom/iflytek/blc/push/PushSetting;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/iflytek/blc/push/PushSetting;->d:Lcom/iflytek/blc/push/PushSetting;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->b:Landroid/content/SharedPreferences;

    iput-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/push/PushSetting;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x1

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/iflytek/blc/push/PushSetting;->b:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/iflytek/blc/push/PushSetting;
    .locals 3

    const-class v1, Lcom/iflytek/blc/push/PushSetting;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/iflytek/blc/push/PushSetting;->d:Lcom/iflytek/blc/push/PushSetting;

    if-nez v0, :cond_1

    const-class v2, Lcom/iflytek/blc/push/PushSetting;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/iflytek/blc/push/PushSetting;->d:Lcom/iflytek/blc/push/PushSetting;

    if-nez v0, :cond_0

    new-instance v0, Lcom/iflytek/blc/push/PushSetting;

    invoke-direct {v0}, Lcom/iflytek/blc/push/PushSetting;-><init>()V

    sput-object v0, Lcom/iflytek/blc/push/PushSetting;->d:Lcom/iflytek/blc/push/PushSetting;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v0, Lcom/iflytek/blc/push/PushSetting;->d:Lcom/iflytek/blc/push/PushSetting;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getBooleanSettings(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/iflytek/blc/push/PushSetting;->a(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntSettings(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/iflytek/blc/push/PushSetting;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/iflytek/blc/push/PushSetting;->b(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getLongSetting(Ljava/lang/String;)J
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/iflytek/blc/push/PushSetting;->b:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/iflytek/blc/push/PushSetting;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->a:Landroid/content/Context;

    const-string/jumbo v1, "blcpush_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->b:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public setSetting(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PushSetting"

    const-string/jumbo v2, "setSetting | error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSetting(Ljava/lang/String;J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PushSetting"

    const-string/jumbo v2, "setSetting | error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSetting(Ljava/lang/String;Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/iflytek/blc/push/PushSetting;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "PushSetting"

    const-string/jumbo v2, "setSetting | error"

    invoke-static {v1, v2, v0}, Lcom/iflytek/blc/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
