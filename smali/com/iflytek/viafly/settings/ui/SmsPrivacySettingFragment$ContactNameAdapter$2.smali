.class Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;
.super Ljava/lang/Object;
.source "SmsPrivacySettingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->bindView(ILcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

.field final synthetic val$position:I

.field final synthetic val$view:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->this$1:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->val$view:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    iput p3, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 421
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->val$view:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->access$400(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const-string/jumbo v1, "image.btn_contact_reduce_press_dial"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 433
    :cond_1
    :goto_0
    return v3

    .line 424
    :cond_2
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->val$view:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->access$400(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const-string/jumbo v1, "image.btn_contact_reduce_nor_dial"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 425
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v3, v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->this$1:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    iget-object v0, v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->access$100(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 428
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->this$1:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    iget-object v0, v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    iget v1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->val$position:I

    invoke-virtual {v0, v1}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->stopAudition(I)V

    .line 429
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->this$1:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    iget-object v0, v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->updateList()V

    .line 430
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$2;->this$1:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    iget-object v0, v0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-virtual {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->savePrivacyContact()V

    goto :goto_0
.end method
