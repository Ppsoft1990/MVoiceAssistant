.class Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$2;
.super Ljava/lang/Object;
.source "SmsPrivacySettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->savePrivacyContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 255
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_SMS_PRIVACY_CONTACT"

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment$2;->this$0:Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/SmsPrivacySettingFragment;->listToJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method
