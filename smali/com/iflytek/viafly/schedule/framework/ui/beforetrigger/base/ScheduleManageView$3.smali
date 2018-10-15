.class Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$3;
.super Landroid/text/InputFilter$LengthFilter;
.source "ScheduleManageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->setContentLengthLimit(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;
    .param p2, "x0"    # I

    .prologue
    .line 235
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$3;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-direct {p0, p2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "dest"    # Landroid/text/Spanned;
    .param p5, "dstart"    # I
    .param p6, "dend"    # I

    .prologue
    .line 239
    const-string/jumbo v0, "ScheduleManageView"

    const-string/jumbo v1, "----------->> speechfilter()"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const-string/jumbo v0, "ScheduleManageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "----------->> source="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const-string/jumbo v0, "ScheduleManageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "----------->> dest="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", start="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", end="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x1e

    if-le v0, v1, :cond_0

    .line 246
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$3;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v2}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->e(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->i()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$3;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;J)J

    .line 248
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$3;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView$3;->a:Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;

    invoke-static {v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->f(Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c01b4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/beforetrigger/base/ScheduleManageView;->a(Ljava/lang/String;)V

    .line 251
    :cond_0
    invoke-super/range {p0 .. p6}, Landroid/text/InputFilter$LengthFilter;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
