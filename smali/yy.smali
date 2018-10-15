.class public Lyy;
.super Ljava/lang/Object;
.source "PushSetting.java"


# static fields
.field private static d:Lyy;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/content/SharedPreferences;

.field private c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lyy;->d:Lyy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lyy;->b:Landroid/content/SharedPreferences;

    .line 15
    iput-object v0, p0, Lyy;->c:Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static declared-synchronized a()Lyy;
    .locals 3

    .prologue
    .line 44
    const-class v1, Lyy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyy;->d:Lyy;

    if-nez v0, :cond_1

    .line 45
    const-class v2, Lyy;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    sget-object v0, Lyy;->d:Lyy;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lyy;

    invoke-direct {v0}, Lyy;-><init>()V

    sput-object v0, Lyy;->d:Lyy;

    .line 49
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :cond_1
    :try_start_2
    sget-object v0, Lyy;->d:Lyy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    return-object v0

    .line 49
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 44
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 110
    move v0, p2

    .line 112
    .local v0, "ret":I
    :try_start_0
    iget-object v1, p0, Lyy;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 113
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 62
    const-wide/16 v2, 0x0

    .line 64
    .local v2, "value":J
    :try_start_0
    iget-object v1, p0, Lyy;->b:Landroid/content/SharedPreferences;

    const-wide/16 v4, 0x0

    invoke-interface {v1, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 68
    :goto_0
    return-wide v2

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v1, "PushSetting"

    const-string/jumbo v4, "getLongSetting | error"

    invoke-static {v1, v4, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    iput-object p1, p0, Lyy;->a:Landroid/content/Context;

    .line 56
    iget-object v0, p0, Lyy;->a:Landroid/content/Context;

    const-string/jumbo v1, "blcpush_setting"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lyy;->b:Landroid/content/SharedPreferences;

    .line 58
    iget-object v0, p0, Lyy;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lyy;->c:Landroid/content/SharedPreferences$Editor;

    .line 59
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lyy;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    iget-object v1, p0, Lyy;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    :goto_0
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PushSetting"

    const-string/jumbo v2, "setSetting | error"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;J)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lyy;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v1, p0, Lyy;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "PushSetting"

    const-string/jumbo v2, "setSetting | error"

    invoke-static {v1, v2, v0}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "ret":I
    iget-object v1, p0, Lyy;->b:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lyy;->b(Ljava/lang/String;I)I

    move-result v0

    .line 124
    :cond_0
    return v0
.end method
