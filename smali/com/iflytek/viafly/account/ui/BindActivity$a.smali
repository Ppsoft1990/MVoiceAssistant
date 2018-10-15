.class Lcom/iflytek/viafly/account/ui/BindActivity$a;
.super Landroid/os/Handler;
.source "BindActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/account/ui/BindActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/iflytek/viafly/account/ui/BindActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/account/ui/BindActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/account/ui/BindActivity;

    .prologue
    .line 337
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 338
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/account/ui/BindActivity$a;->a:Ljava/lang/ref/WeakReference;

    .line 339
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 343
    iget-object v2, p0, Lcom/iflytek/viafly/account/ui/BindActivity$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/account/ui/BindActivity;

    .line 344
    .local v0, "outer":Lcom/iflytek/viafly/account/ui/BindActivity;
    if-eqz v0, :cond_0

    .line 345
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 383
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 347
    :pswitch_1
    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->e(Lcom/iflytek/viafly/account/ui/BindActivity;)I

    move-result v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Lcom/iflytek/viafly/account/ui/BindActivity;IZ)V

    goto :goto_0

    .line 350
    :pswitch_2
    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->e(Lcom/iflytek/viafly/account/ui/BindActivity;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/iflytek/viafly/account/ui/BindActivity;->a(Lcom/iflytek/viafly/account/ui/BindActivity;IZ)V

    goto :goto_0

    .line 353
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 354
    .local v1, "toast":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 355
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 359
    .end local v1    # "toast":Ljava/lang/String;
    :pswitch_4
    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->h(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    goto :goto_0

    .line 362
    :pswitch_5
    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->i(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    goto :goto_0

    .line 365
    :pswitch_6
    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->j(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    goto :goto_0

    .line 368
    :pswitch_7
    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->k(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    goto :goto_0

    .line 371
    :pswitch_8
    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->l(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    goto :goto_0

    .line 374
    :pswitch_9
    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->m(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    goto :goto_0

    .line 377
    :pswitch_a
    invoke-static {v0}, Lcom/iflytek/viafly/account/ui/BindActivity;->n(Lcom/iflytek/viafly/account/ui/BindActivity;)V

    goto :goto_0

    .line 345
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
    .end packed-switch
.end method
