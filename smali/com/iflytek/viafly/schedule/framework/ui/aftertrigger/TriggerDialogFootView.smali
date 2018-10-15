.class public Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;
.super Landroid/widget/LinearLayout;
.source "TriggerDialogFootView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:J

.field private d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->e:J

    .line 41
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->a:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    .line 43
    invoke-direct {p0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->a()V

    .line 44
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 47
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300ee

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->b:Landroid/view/View;

    .line 48
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->b:Landroid/view/View;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "schedule":Lcom/iflytek/viafly/schedule/framework/entities/Schedule;
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->a:Landroid/content/Context;

    instance-of v1, v1, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->a:Landroid/content/Context;

    check-cast v1, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;

    invoke-virtual {v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/ScheduleTriggerDialog;->f()Lcom/iflytek/viafly/schedule/framework/entities/Schedule;

    move-result-object v0

    .line 54
    :cond_0
    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/iflytek/viafly/schedule/framework/entities/Schedule;->getDelaySetting()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->c:J

    .line 73
    :goto_0
    const v1, 0x7f0b0571

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    const v1, 0x7f0b058f

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v1, 0x7f0b0590

    invoke-virtual {p0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void

    .line 57
    :cond_1
    const-wide/16 v2, 0xa

    iput-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->c:J

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->e:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 88
    const-string/jumbo v0, "ScheduleTriggerDialogFootView"

    const-string/jumbo v1, "---------->> click too much!"

    invoke-static {v0, v1}, Lhj;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->e:J

    .line 93
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 101
    :sswitch_0
    const-string/jumbo v0, "ScheduleTriggerDialogFootView"

    const-string/jumbo v1, "--------->> onClick() | Close_Button"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;->a(I)V

    goto :goto_0

    .line 108
    :sswitch_1
    const-string/jumbo v0, "ScheduleTriggerDialogFootView"

    const-string/jumbo v1, "--------->> onClick() | Delay_10min_Button"

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    iget-wide v2, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->c:J

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;->a(J)V

    goto :goto_0

    .line 149
    :sswitch_2
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->d:Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;

    invoke-interface {v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView$a;->a()V

    goto :goto_0

    .line 93
    :sswitch_data_0
    .sparse-switch
        0x7f0b0571 -> :sswitch_0
        0x7f0b058f -> :sswitch_1
        0x7f0b0590 -> :sswitch_2
    .end sparse-switch
.end method

.method public setComplaintVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const v0, 0x7f0b0590

    const v3, 0x7f0b058f

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 187
    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 189
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-virtual {p0, v0}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 192
    invoke-virtual {p0, v3}, Lcom/iflytek/viafly/schedule/framework/ui/aftertrigger/TriggerDialogFootView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
