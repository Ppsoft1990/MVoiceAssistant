.class Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;
.super Ljava/lang/Object;
.source "BookPlayerActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    .prologue
    .line 1108
    iput-object p1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 1111
    if-eqz p3, :cond_0

    .line 1112
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v1

    invoke-virtual {v1}, Lamp;->E()I

    move-result v0

    .line 1113
    .local v0, "duration":I
    if-lez v0, :cond_0

    .line 1114
    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    mul-int v2, v0, p2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)V

    .line 1118
    .end local v0    # "duration":I
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 1123
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->h(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1124
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1125
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1126
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1127
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->e(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;Z)Z

    .line 1133
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 1134
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->f(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v0

    invoke-virtual {v0}, Lamp;->K()V

    .line 1137
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v0

    invoke-virtual {v0}, Lamz;->e()V

    .line 1138
    invoke-static {}, Lamz;->a()Lamz;

    move-result-object v0

    invoke-virtual {v0}, Lamz;->f()V

    .line 1140
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->l(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lame;

    move-result-object v0

    invoke-virtual {v0}, Lame;->k()V

    .line 1141
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->l(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lame;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->m(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lame;->a(Lcom/iflytek/viafly/listenbook/entity/ChargeInfo;)V

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1143
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v0

    invoke-virtual {v0}, Lamp;->J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1145
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v0

    invoke-virtual {v0}, Lamp;->K()V

    .line 1146
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const-string/jumbo v1, "\u5df2\u662f\u6700\u540e\u4e00\u7ae0"

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 1149
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->n(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)V

    goto :goto_0

    .line 1153
    :cond_3
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v1, v2}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lamp;->b(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1154
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->c(Z)V

    .line 1157
    :cond_4
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->a(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Lamp;

    move-result-object v0

    invoke-virtual {v0}, Lamp;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->h(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1159
    iget-object v0, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->b(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity$2;->a:Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;

    invoke-static {v1}, Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;->h(Lcom/iflytek/viafly/listenbook/ui/BookPlayerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
