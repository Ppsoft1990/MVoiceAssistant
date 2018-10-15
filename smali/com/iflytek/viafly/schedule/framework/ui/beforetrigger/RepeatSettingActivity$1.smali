.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;
.super Ljava/lang/Object;
.source "RepeatSettingActivity.java"

# interfaces
.implements Lavw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 172
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    sget-object v1, Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;->month_date:Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;)Lcom/iflytek/viafly/schedule/framework/entities/ScheduleRepeat;

    .line 173
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    const v1, 0x7f0b05c7

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;I)V

    .line 174
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    const v1, 0x7f0b05c6

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->b(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;I)V

    .line 175
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    const v2, 0x7f0b05ca

    invoke-virtual {v0, v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;

    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/NumberPickView;->getSelectDay()I

    move-result v0

    invoke-static {v1, v0}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->c(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;I)I

    .line 176
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    const v1, 0x7f0b05c9

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u6bcf\u6708"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/RepeatSettingActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\u53f7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    return-void
.end method
