.class Lcom/iflytek/viafly/schedule/TrafficSettingActivity$1;
.super Ljava/lang/Object;
.source "TrafficSettingActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/viafly/schedule/TrafficSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/viafly/schedule/TrafficSettingActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/schedule/TrafficSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 448
    const-string/jumbo v0, "TrafficSettingActivity"

    const-string/jumbo v1, "afterTextChanged "

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iget-object v0, p0, Lcom/iflytek/viafly/schedule/TrafficSettingActivity$1;->a:Lcom/iflytek/viafly/schedule/TrafficSettingActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/schedule/TrafficSettingActivity;->a(Lcom/iflytek/viafly/schedule/TrafficSettingActivity;Z)Z

    .line 450
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 439
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 444
    return-void
.end method
