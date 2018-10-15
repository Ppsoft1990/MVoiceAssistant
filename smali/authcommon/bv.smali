.class public final Lauthcommon/bv;
.super Landroid/os/CountDownTimer;
.source "SimpleToast.java"


# instance fields
.field private synthetic a:Lcom/cmcc/util/SimpleToast;


# direct methods
.method public constructor <init>(Lcom/cmcc/util/SimpleToast;J)V
    .locals 2

    iput-object p1, p0, Lauthcommon/bv;->a:Lcom/cmcc/util/SimpleToast;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 1

    iget-object v0, p0, Lauthcommon/bv;->a:Lcom/cmcc/util/SimpleToast;

    invoke-static {v0}, Lcom/cmcc/util/SimpleToast;->a(Lcom/cmcc/util/SimpleToast;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public final onTick(J)V
    .locals 1

    iget-object v0, p0, Lauthcommon/bv;->a:Lcom/cmcc/util/SimpleToast;

    invoke-static {v0}, Lcom/cmcc/util/SimpleToast;->a(Lcom/cmcc/util/SimpleToast;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
