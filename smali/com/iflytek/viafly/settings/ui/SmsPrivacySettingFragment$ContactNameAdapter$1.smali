.class Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$1;
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

.field final synthetic val$view:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$1;->this$1:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$1;->val$view:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameAdapter$1;->val$view:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;->access$400(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const-string/jumbo v1, "image.btn_contact_reduce_nor_dial"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 415
    const/4 v0, 0x0

    return v0
.end method
