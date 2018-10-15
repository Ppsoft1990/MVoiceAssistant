.class Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;
.super Ljava/lang/Object;
.source "HomeLongPressActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->longPressHandle(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;

.field final synthetic val$miaoHuFlag:I


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;

    iput p2, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;->val$miaoHuFlag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;

    iget-object v1, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->isAppOnForeground(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;

    iget v1, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;->val$miaoHuFlag:I

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->access$000(Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->access$100(Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;Z)V

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity$1;->this$0:Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;

    invoke-virtual {v0}, Lcom/iflytek/viafly/ui/activity/HomeLongPressActivity;->finish()V

    .line 73
    return-void
.end method
