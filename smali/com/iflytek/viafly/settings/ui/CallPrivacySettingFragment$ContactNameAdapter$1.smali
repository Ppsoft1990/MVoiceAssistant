.class Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter$1;
.super Ljava/lang/Object;
.source "CallPrivacySettingFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;->bindView(ILcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;

.field final synthetic val$view:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)V
    .locals 0
    .param p1, "this$1"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;

    .prologue
    .line 427
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter$1;->this$1:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter$1;->val$view:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 430
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameAdapter$1;->val$view:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;

    invoke-static {v0}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;->access$800(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$ContactNameView;)Lcom/iflytek/base/skin/customView/XImageView;

    move-result-object v0

    const-string/jumbo v1, "image.btn_contact_reduce_nor_dial"

    sget-object v2, Lcom/iflytek/base/skin/Orientation;->UNDEFINE:Lcom/iflytek/base/skin/Orientation;

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/base/skin/customView/XImageView;->setCustomBackgound(Ljava/lang/String;Lcom/iflytek/base/skin/Orientation;)V

    .line 431
    const/4 v0, 0x0

    return v0
.end method
