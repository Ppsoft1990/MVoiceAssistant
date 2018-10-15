.class Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$3;
.super Ljava/lang/Object;
.source "CallPrivacySettingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->savePrivacyContact()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 270
    invoke-static {}, Lil;->a()Lil;

    move-result-object v0

    const-string/jumbo v1, "com.iflytek.cmccIFLY_NOTIFY_CALL_PRIVACY_CONTACT"

    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/CallPrivacySettingFragment;->listToJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lil;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method
