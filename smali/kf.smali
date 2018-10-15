.class public Lkf;
.super Ljava/lang/Object;


# static fields
.field private static a:Lke;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lkf;->a:Lke;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Lkg;
    .locals 2

    const-class v1, Lkf;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lkf;->a:Lke;

    if-nez v0, :cond_0

    new-instance v0, Lke;

    invoke-direct {v0, p0, p1}, Lke;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lkf;->a:Lke;

    :cond_0
    sget-object v0, Lkf;->a:Lke;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Z)V
    .locals 0

    invoke-static {p0}, Lkk;->a(Z)V

    return-void
.end method
