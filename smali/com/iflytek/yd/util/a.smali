.class final Lcom/iflytek/yd/util/a;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/iflytek/yd/util/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/iflytek/yd/util/a;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/iflytek/yd/util/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/iflytek/yd/util/a;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/iflytek/yd/util/UIUtil;->showSoftInput(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
