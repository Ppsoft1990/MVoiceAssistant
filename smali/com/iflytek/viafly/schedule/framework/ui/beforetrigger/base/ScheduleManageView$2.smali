.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;
.super Ljava/lang/Object;
.source "ScheduleManageView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/entities/Schedule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 162
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v1, v1, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneView;->getCheckItem()Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;

    move-result-object v0

    .line 163
    .local v0, "checkItem":Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;
    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    sget-object v1, Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;->LONG:Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleRingToneItemView;->getScheduleRingtoneItem()Lavz;

    move-result-object v2

    invoke-virtual {v2}, Lavz;->c()Lcom/iflytek/viafly/schedule/ScheduleConstants$ScheduleRingtoneType;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 167
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->d(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$2;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 155
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "i2"    # I

    .prologue
    .line 158
    return-void
.end method
