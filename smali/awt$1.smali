.class Lawt$1;
.super Landroid/os/Handler;
.source "VirtualAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lawt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lawt;

.field private b:F


# direct methods
.method constructor <init>(Lawt;)V
    .locals 1
    .param p1, "this$0"    # Lawt;

    .prologue
    .line 107
    iput-object p1, p0, Lawt$1;->a:Lawt;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 108
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lawt$1;->b:F

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const v4, 0x3f19999a    # 0.6f

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x42c80000    # 100.0f

    .line 111
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 114
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    iget-object v3, p0, Lawt$1;->a:Lawt;

    invoke-static {v3}, Lawt;->b(Lawt;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    div-float/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->setProgress(F)V

    .line 116
    :cond_1
    iget v2, p0, Lawt$1;->b:F

    add-float/2addr v2, v4

    iput v2, p0, Lawt$1;->b:F

    .line 117
    iget-object v2, p0, Lawt$1;->a:Lawt;

    iget-object v3, p0, Lawt$1;->a:Lawt;

    invoke-static {v3}, Lawt;->b(Lawt;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lawt$1;->b:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lawt;->a(Lawt;I)I

    .line 118
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->b(Lawt;)I

    move-result v2

    iget-object v3, p0, Lawt$1;->a:Lawt;

    invoke-static {v3}, Lawt;->c(Lawt;)I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 119
    const-string/jumbo v2, "VirtualAnimationHelper"

    const-string/jumbo v3, "reached divider"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->d(Lawt;)Lawt$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->d(Lawt;)Lawt$a;

    move-result-object v2

    iget-object v3, p0, Lawt$1;->a:Lawt;

    .line 122
    invoke-static {v3}, Lawt;->e(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v5, p0, Lawt$1;->a:Lawt;

    .line 124
    invoke-static {v5}, Lawt;->c(Lawt;)I

    move-result v5

    iget-object v6, p0, Lawt$1;->a:Lawt;

    .line 125
    invoke-static {v6}, Lawt;->c(Lawt;)I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, v8

    div-float/2addr v6, v7

    .line 121
    invoke-interface {v2, v3, v4, v5, v6}, Lawt$a;->a(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;IIF)V

    goto :goto_0

    .line 129
    :cond_2
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->b(Lawt;)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_5

    .line 130
    const-string/jumbo v2, "VirtualAnimationHelper"

    const-string/jumbo v3, "reached max1"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->d(Lawt;)Lawt$a;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 132
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->d(Lawt;)Lawt$a;

    move-result-object v2

    iget-object v3, p0, Lawt$1;->a:Lawt;

    .line 133
    invoke-static {v3}, Lawt;->e(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 132
    invoke-interface {v2, v3, v4}, Lawt$a;->c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V

    .line 136
    :cond_3
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 137
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->setProgress(F)V

    .line 139
    :cond_4
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2, v6}, Lawt;->a(Lawt;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    goto/16 :goto_0

    .line 142
    :cond_5
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 143
    .local v0, "msgNew":Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v0, Landroid/os/Message;->what:I

    .line 144
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 145
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 146
    iget-object v2, p0, Lawt$1;->a:Lawt;

    .line 147
    invoke-static {v2}, Lawt;->f(Lawt;)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    int-to-long v2, v2

    .line 146
    invoke-virtual {p0, v0, v2, v3}, Lawt$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 150
    .end local v0    # "msgNew":Landroid/os/Message;
    :pswitch_1
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 151
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    iget-object v3, p0, Lawt$1;->a:Lawt;

    invoke-static {v3}, Lawt;->b(Lawt;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v8

    div-float/2addr v3, v7

    invoke-virtual {v2, v3}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->setProgress(F)V

    .line 153
    :cond_6
    iget v2, p0, Lawt$1;->b:F

    add-float/2addr v2, v4

    iput v2, p0, Lawt$1;->b:F

    .line 154
    iget-object v2, p0, Lawt$1;->a:Lawt;

    iget-object v3, p0, Lawt$1;->a:Lawt;

    invoke-static {v3}, Lawt;->b(Lawt;)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lawt$1;->b:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lawt;->a(Lawt;I)I

    .line 155
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->b(Lawt;)I

    move-result v2

    const/16 v3, 0x64

    if-lt v2, v3, :cond_9

    .line 156
    const-string/jumbo v2, "VirtualAnimationHelper"

    const-string/jumbo v3, "reached max2"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->d(Lawt;)Lawt$a;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 158
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->d(Lawt;)Lawt$a;

    move-result-object v2

    iget-object v3, p0, Lawt$1;->a:Lawt;

    .line 159
    invoke-static {v3}, Lawt;->e(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 158
    invoke-interface {v2, v3, v4}, Lawt$a;->c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V

    .line 162
    :cond_7
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 163
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->setProgress(F)V

    .line 165
    :cond_8
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2, v6}, Lawt;->a(Lawt;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    goto/16 :goto_0

    .line 168
    :cond_9
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 169
    .local v1, "msgNewLeft":Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    .line 170
    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 171
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 172
    iget-object v2, p0, Lawt$1;->a:Lawt;

    .line 173
    invoke-static {v2}, Lawt;->f(Lawt;)J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v2, v7

    div-float/2addr v2, v7

    float-to-int v2, v2

    int-to-long v2, v2

    .line 172
    invoke-virtual {p0, v1, v2, v3}, Lawt$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 176
    .end local v1    # "msgNewLeft":Landroid/os/Message;
    :pswitch_2
    iput v8, p0, Lawt$1;->b:F

    .line 177
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lawt$1;->removeMessages(I)V

    .line 178
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lawt$1;->removeMessages(I)V

    .line 180
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 181
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->a(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/iflytek/viafly/schedule/personalizedtone/ProgressView;->setProgress(F)V

    .line 183
    :cond_a
    const-string/jumbo v2, "VirtualAnimationHelper"

    const-string/jumbo v3, "reached max3"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->d(Lawt;)Lawt$a;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 185
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2}, Lawt;->d(Lawt;)Lawt$a;

    move-result-object v2

    iget-object v3, p0, Lawt$1;->a:Lawt;

    invoke-static {v3}, Lawt;->e(Lawt;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3, v4}, Lawt$a;->c(Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;I)V

    .line 187
    :cond_b
    iget-object v2, p0, Lawt$1;->a:Lawt;

    invoke-static {v2, v6}, Lawt;->a(Lawt;Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;)Lcom/iflytek/viafly/schedule/personalizedtone/PersonalizedRingToneView$a;

    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
