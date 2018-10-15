.class public final Lgj;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lgj;->b:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lgj;->d:Ljava/lang/String;

    iput-object p1, p0, Lgj;->a:Landroid/content/Context;

    const/4 v0, 0x2

    iput v0, p0, Lgj;->c:I

    iput-object p2, p0, Lgj;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget v0, p0, Lgj;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lgj;->a:Landroid/content/Context;

    invoke-static {v0}, Lgc;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MobileAgent"

    const-string/jumbo v2, "Exception occurred when recording usage."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lgj;->a:Landroid/content/Context;

    iget-object v1, p0, Lgj;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lgc;->a(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lgj;->a:Landroid/content/Context;

    iget-object v1, p0, Lgj;->b:Ljava/lang/String;

    iget-object v2, p0, Lgj;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lgc;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lgj;->a:Landroid/content/Context;

    invoke-static {v0}, Lgc;->a(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lgj;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lgc;->b(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lgj;->a:Landroid/content/Context;

    invoke-static {v0}, Lgc;->b(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
