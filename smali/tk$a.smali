.class Ltk$a;
.super Landroid/os/Handler;
.source "UserCenterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltk;
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
            "Ltk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltk;)V
    .locals 1
    .param p1, "activity"    # Ltk;

    .prologue
    .line 732
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 733
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ltk$a;->a:Ljava/lang/ref/WeakReference;

    .line 734
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 738
    iget-object v5, p0, Ltk$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltk;

    .line 739
    .local v3, "outer":Ltk;
    if-eqz v3, :cond_0

    .line 740
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 742
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->c()Z

    move-result v5

    invoke-static {v3, v5}, Ltk;->c(Ltk;Z)V

    .line 791
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 745
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Lth;->a(Lcom/iflytek/viafly/account/model/IUserInfoRequestResultListener;Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_2
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 747
    invoke-static {v3}, Ltk;->e(Ltk;)V

    goto :goto_0

    .line 748
    :cond_3
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    .line 750
    :try_start_0
    invoke-static {v3}, Ltk;->f(Ltk;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 751
    invoke-static {v3}, Ltk;->g(Ltk;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 752
    invoke-static {v3}, Ltk;->g(Ltk;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "\u5df2\u7b7e\u5230"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    invoke-virtual {v3}, Ltk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020218

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 754
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 755
    invoke-static {v3}, Ltk;->g(Ltk;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 763
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v2

    .line 764
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v3}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 757
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    :try_start_1
    invoke-static {v3}, Ltk;->g(Ltk;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 758
    invoke-static {v3}, Ltk;->g(Ltk;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "\u7b7e\u5230"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    invoke-virtual {v3}, Ltk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020216

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 760
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 761
    invoke-static {v3}, Ltk;->g(Ltk;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 766
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_5
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_6

    .line 768
    :try_start_2
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 769
    .local v4, "toast":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 770
    invoke-virtual {v3}, Ltk;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 772
    .end local v4    # "toast":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 773
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 775
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_6
    iget v5, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 777
    :try_start_3
    invoke-static {}, Lth;->a()Lth;

    move-result-object v5

    invoke-virtual {v5}, Lth;->c()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 778
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lalz;

    .line 779
    .local v0, "data":Lalz;
    invoke-static {v3}, Ltk;->g(Ltk;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 780
    invoke-static {v3}, Ltk;->g(Ltk;)Landroid/widget/TextView;

    move-result-object v5

    const-string/jumbo v6, "\u5df2\u7b7e\u5230"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 781
    invoke-virtual {v3}, Ltk;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020218

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 782
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v8

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 783
    invoke-static {v3}, Ltk;->g(Ltk;)Landroid/widget/TextView;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v1, v6, v7, v8}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 784
    invoke-virtual {v0}, Lalz;->b()I

    move-result v5

    invoke-virtual {v0}, Lalz;->e()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ltk;->a(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 786
    .end local v0    # "data":Lalz;
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_2
    move-exception v2

    .line 787
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-static {v3}, Ltk;->a(Ltk;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-static {v5, v6, v2}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0
.end method
