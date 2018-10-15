.class Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$3;
.super Ljava/lang/Object;
.source "CallPrivacyAddContactsActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 238
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$300(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setFocusable(Z)V

    .line 239
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$300(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/iflytek/base/skin/customView/XEditText;->setFocusableInTouchMode(Z)V

    .line 240
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;->access$300(Lcom/iflytek/viafly/settings/ui/CallPrivacyAddContactsActivity;)Lcom/iflytek/base/skin/customView/XEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/iflytek/base/skin/customView/XEditText;->requestFocus()Z

    .line 241
    const/4 v0, 0x0

    return v0
.end method
