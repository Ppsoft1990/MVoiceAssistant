.class Ltn$5;
.super Landroid/os/Handler;
.source "UserVoiceRegisterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ltn;


# direct methods
.method constructor <init>(Ltn;)V
    .locals 0
    .param p1, "this$0"    # Ltn;

    .prologue
    .line 534
    iput-object p1, p0, Ltn$5;->a:Ltn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    .line 537
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 539
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 540
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 541
    .local v2, "result":Ljava/lang/String;
    iget-object v5, p0, Ltn$5;->a:Ltn;

    invoke-static {v5, v2}, Ltn;->a(Ltn;Ljava/lang/String;)Ljava/lang/String;

    .line 542
    iget-object v5, p0, Ltn$5;->a:Ltn;

    iget-object v6, p0, Ltn$5;->a:Ltn;

    invoke-static {v6}, Ltn;->c(Ltn;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ltn;->a(Ltn;[Ljava/lang/String;)[Ljava/lang/String;

    .line 543
    iget-object v5, p0, Ltn$5;->a:Ltn;

    invoke-static {v5}, Ltn;->n(Ltn;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Ltn$5;->a:Ltn;

    invoke-static {v7}, Ltn;->c(Ltn;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ltn$5;->a:Ltn;

    invoke-static {v7}, Ltn;->c(Ltn;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    new-instance v3, Landroid/text/SpannableString;

    const-string/jumbo v5, "\u8fd8\u67093\u6b21"

    invoke-direct {v3, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 547
    .local v3, "ss":Landroid/text/SpannableString;
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    const-string/jumbo v6, "#ff0000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/16 v8, 0x21

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 550
    iget-object v5, p0, Ltn$5;->a:Ltn;

    invoke-static {v5}, Ltn;->j(Ltn;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 555
    .end local v2    # "result":Ljava/lang/String;
    .end local v3    # "ss":Landroid/text/SpannableString;
    :pswitch_1
    iget-object v5, p0, Ltn$5;->a:Ltn;

    invoke-static {v5}, Ltn;->j(Ltn;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "\u83b7\u53d6\u5bc6\u7801\u5931\u8d25"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 558
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lalz;

    if-eqz v5, :cond_0

    .line 559
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lalz;

    .line 560
    .local v1, "data":Lalz;
    iget-object v5, p0, Ltn$5;->a:Ltn;

    invoke-virtual {v5}, Ltn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 561
    new-instance v0, Lcom/iflytek/viafly/ui/CustomToast;

    iget-object v5, p0, Ltn$5;->a:Ltn;

    invoke-virtual {v5}, Ltn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/iflytek/viafly/ui/CustomToast;-><init>(Landroid/content/Context;)V

    .line 562
    .local v0, "customToast":Lcom/iflytek/viafly/ui/CustomToast;
    invoke-virtual {v1}, Lalz;->b()I

    move-result v5

    invoke-virtual {v1}, Lalz;->e()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lcom/iflytek/viafly/ui/CustomToast;->makeNormalText(II)V

    goto/16 :goto_0

    .line 567
    .end local v0    # "customToast":Lcom/iflytek/viafly/ui/CustomToast;
    .end local v1    # "data":Lalz;
    :pswitch_3
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 568
    .local v4, "toast":Ljava/lang/String;
    iget-object v5, p0, Ltn$5;->a:Ltn;

    invoke-virtual {v5}, Ltn;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5, v4, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
