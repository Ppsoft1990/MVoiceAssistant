.class Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$2;
.super Ljava/lang/Object;
.source "DailyTrafficLimitActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 61
    const-string/jumbo v0, "DailyTrafficLimitActivity"

    const-string/jumbo v1, "afterTextChanged "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->access$202(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;Z)Z

    .line 63
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 48
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 52
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->access$100(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->access$000(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity$2;->this$0:Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;->access$000(Lcom/iflytek/viafly/smartschedule/ui/DailyTrafficLimitActivity;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XImageView;->setVisibility(I)V

    goto :goto_0
.end method
