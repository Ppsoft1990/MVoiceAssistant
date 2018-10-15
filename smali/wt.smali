.class public final Lwt;
.super Lwo;
.source "ActivityOpLogHelper.java"


# static fields
.field private static c:Lwt;


# instance fields
.field private b:Landroid/app/ActivityManager;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lwt;->c:Lwt;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lwo;-><init>(Landroid/content/Context;)V

    .line 50
    iget-object v0, p0, Lwt;->a:Landroid/content/Context;

    const-string/jumbo v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lwt;->b:Landroid/app/ActivityManager;

    .line 51
    const-class v0, Lcom/iflytek/viafly/Home;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwt;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private a()Landroid/content/ComponentName;
    .locals 6

    .prologue
    .line 87
    :try_start_0
    iget-object v4, p0, Lwt;->b:Landroid/app/ActivityManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 88
    .local v2, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 89
    .local v3, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v2    # "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "ActivityOpLogHelper"

    const-string/jumbo v5, ""

    invoke-static {v4, v5, v1}, Lcom/iflytek/yd/log/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 94
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Lwt;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Lwt;->c:Lwt;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lwt;

    invoke-direct {v0, p0}, Lwt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lwt;->c:Lwt;

    .line 45
    :cond_0
    sget-object v0, Lwt;->c:Lwt;

    return-object v0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "activityClass"    # Ljava/lang/String;

    .prologue
    .line 99
    const-string/jumbo v0, "ActivityOpLogHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordLog type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " activityClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    packed-switch p1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 102
    :pswitch_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwt;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lwt;->d:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 4
    .param p1, "activityClass"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string/jumbo v1, "ActivityOpLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLogActivityStart activity name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-direct {p0}, Lwt;->a()Landroid/content/ComponentName;

    move-result-object v0

    .line 60
    .local v0, "componentName":Landroid/content/ComponentName;
    iget-object v1, p0, Lwt;->e:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lwt;->e:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 61
    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lwt;->a(ILjava/lang/String;)V

    .line 63
    :cond_1
    if-eqz v0, :cond_2

    .line 64
    iput-object v0, p0, Lwt;->e:Landroid/content/ComponentName;

    .line 66
    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4
    .param p1, "activityClass"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string/jumbo v1, "ActivityOpLogHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLogActivityStop activity name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-direct {p0}, Lwt;->a()Landroid/content/ComponentName;

    move-result-object v0

    .line 74
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.iflytek.cmcc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 75
    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lwt;->a(ILjava/lang/String;)V

    .line 80
    :goto_0
    if-eqz v0, :cond_0

    .line 81
    iput-object v0, p0, Lwt;->e:Landroid/content/ComponentName;

    .line 83
    :cond_0
    return-void

    .line 78
    :cond_1
    const-string/jumbo v1, "ActivityOpLogHelper"

    const-string/jumbo v2, "onLogActivityStop current activity is cmcc"

    invoke-static {v1, v2}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
