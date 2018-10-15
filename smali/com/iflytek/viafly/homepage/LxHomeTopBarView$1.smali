.class Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;
.super Landroid/os/Handler;
.source "LxHomeTopBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/homepage/LxHomeTopBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/homepage/LxHomeTopBarView;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 93
    if-nez p1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 98
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;

    .line 99
    .local v1, "model":Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->a(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 100
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->b(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v3, v1, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;->c:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->c(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_1
    sget-object v3, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_AUDIO_RESOURCE:Lcom/iflytek/viafly/player/base/PlayerBizType;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->d(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Lcom/iflytek/viafly/player/base/PlayerBizType;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 109
    const v0, 0x7f0200f0

    .line 117
    .local v0, "mDefaultCoverRes":I
    :goto_2
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->e(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 118
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->e(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;

    move-result-object v3

    iget-object v4, v1, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;->a:Ljava/lang/String;

    invoke-static {v3, v4, v0}, Laqc;->a(Landroid/widget/ImageView;Ljava/lang/String;I)V

    goto :goto_0

    .line 104
    .end local v0    # "mDefaultCoverRes":I
    :cond_2
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->c(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->c(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v1, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 110
    :cond_3
    sget-object v3, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_BOOK:Lcom/iflytek/viafly/player/base/PlayerBizType;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->d(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Lcom/iflytek/viafly/player/base/PlayerBizType;

    move-result-object v4

    if-ne v3, v4, :cond_4

    .line 111
    const v0, 0x7f0200f0

    .restart local v0    # "mDefaultCoverRes":I
    goto :goto_2

    .line 112
    .end local v0    # "mDefaultCoverRes":I
    :cond_4
    sget-object v3, Lcom/iflytek/viafly/player/base/PlayerBizType;->BIZ_MUSIC:Lcom/iflytek/viafly/player/base/PlayerBizType;

    iget-object v4, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v4}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->d(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Lcom/iflytek/viafly/player/base/PlayerBizType;

    move-result-object v4

    if-ne v3, v4, :cond_5

    .line 113
    const v0, 0x7f02012a

    .restart local v0    # "mDefaultCoverRes":I
    goto :goto_2

    .line 115
    .end local v0    # "mDefaultCoverRes":I
    :cond_5
    const v0, 0x7f0200f0

    .restart local v0    # "mDefaultCoverRes":I
    goto :goto_2

    .line 121
    .end local v0    # "mDefaultCoverRes":I
    .end local v1    # "model":Lcom/iflytek/viafly/homepage/LxHomeTopBarView$a;
    :pswitch_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 122
    .local v2, "status":I
    const/4 v3, 0x4

    if-ne v3, v2, :cond_6

    .line 123
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->f(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->g(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 126
    :cond_6
    const/4 v3, 0x5

    if-eq v3, v2, :cond_7

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    .line 127
    :cond_7
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->f(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->g(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->h(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 133
    .end local v2    # "status":I
    :pswitch_2
    iget-object v3, p0, Lcom/iflytek/viafly/homepage/LxHomeTopBarView$1;->a:Lcom/iflytek/viafly/homepage/LxHomeTopBarView;

    invoke-static {v3}, Lcom/iflytek/viafly/homepage/LxHomeTopBarView;->a(Lcom/iflytek/viafly/homepage/LxHomeTopBarView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
