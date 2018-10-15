.class Lcom/iflytek/viafly/homepage/LxHomeMainView$a;
.super Landroid/os/Handler;
.source "LxHomeMainView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/LxHomeMainView;
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
            "Lcom/iflytek/viafly/homepage/LxHomeMainView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V
    .locals 1
    .param p1, "activity"    # Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .prologue
    .line 895
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 896
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->a:Ljava/lang/ref/WeakReference;

    .line 897
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0xe

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 901
    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeMainView$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/iflytek/viafly/homepage/LxHomeMainView;

    .line 902
    .local v3, "outer":Lcom/iflytek/viafly/homepage/LxHomeMainView;
    if-eqz v3, :cond_0

    .line 903
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v8, :cond_1

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    if-eq v4, v7, :cond_0

    .line 922
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 923
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    goto :goto_0

    .line 924
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_3

    .line 925
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->b(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    goto :goto_0

    .line 926
    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xb

    if-ne v4, v5, :cond_4

    .line 927
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->c(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    goto :goto_0

    .line 928
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    .line 929
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->d(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    goto :goto_0

    .line 930
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    .line 931
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->e(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 932
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->e(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/iflytek/viafly/ui/dialog/ScheduleDialog$Builder;->dismiss()V

    goto :goto_0

    .line 934
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_7

    .line 935
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->f(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    goto :goto_0

    .line 936
    :cond_7
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_8

    .line 937
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 938
    .local v2, "force":I
    invoke-static {v3, v2}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->a(Lcom/iflytek/viafly/homepage/LxHomeMainView;I)V

    goto :goto_0

    .line 939
    .end local v2    # "force":I
    :cond_8
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v9, :cond_a

    .line 940
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 941
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->g(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    goto :goto_0

    .line 942
    :cond_9
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 943
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->h(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    goto :goto_0

    .line 945
    :cond_a
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_f

    .line 946
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 947
    .local v1, "errorCode":I
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v7, v1, :cond_c

    .line 948
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0c02fd

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 956
    :cond_b
    :goto_1
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 957
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->g(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    goto/16 :goto_0

    .line 949
    :cond_c
    if-ne v8, v1, :cond_b

    .line 950
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->m()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 951
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "\u5237\u65b0\u5931\u8d25"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 952
    :cond_d
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 953
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->i(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "\u52a0\u8f7d\u5931\u8d25"

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 958
    :cond_e
    invoke-virtual {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 959
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->h(Lcom/iflytek/viafly/homepage/LxHomeMainView;)V

    goto/16 :goto_0

    .line 961
    .end local v1    # "errorCode":I
    :cond_f
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_10

    .line 962
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 963
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->j(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Lcom/iflytek/viafly/ui/view/CircleImageView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/iflytek/viafly/ui/view/CircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 964
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_10
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_12

    .line 965
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->k(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 966
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 968
    :cond_11
    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->l(Lcom/iflytek/viafly/homepage/LxHomeMainView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 970
    :cond_12
    iget v4, p1, Landroid/os/Message;->what:I

    if-ne v4, v10, :cond_0

    .line 971
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v3, v4}, Lcom/iflytek/viafly/homepage/LxHomeMainView;->b(Lcom/iflytek/viafly/homepage/LxHomeMainView;I)V

    goto/16 :goto_0
.end method
