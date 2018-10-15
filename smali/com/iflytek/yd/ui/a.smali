.class final Lcom/iflytek/yd/ui/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iflytek/yd/ui/BaseFragment;

.field private b:J


# direct methods
.method constructor <init>(Lcom/iflytek/yd/ui/BaseFragment;)V
    .locals 2

    iput-object p1, p0, Lcom/iflytek/yd/ui/a;->a:Lcom/iflytek/yd/ui/BaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/yd/ui/a;->b:J

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    const-wide/16 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/yd/ui/a;->b:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    iput-wide v4, p0, Lcom/iflytek/yd/ui/a;->b:J

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/yd/ui/a;->b:J

    iget-object v0, p0, Lcom/iflytek/yd/ui/a;->a:Lcom/iflytek/yd/ui/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/iflytek/yd/ui/BaseFragment;->onClickBackButton(Landroid/view/View;)V

    :goto_0
    return-void

    :cond_1
    iget-wide v2, p0, Lcom/iflytek/yd/ui/a;->b:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0
.end method
