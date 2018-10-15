.class Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment$1;
.super Ljava/lang/Object;
.source "NotificationQuickSettingFragment.java"

# interfaces
.implements Lnd;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;

.field final synthetic val$controller:Lzn;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;Lzn;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;

    iput-object p2, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment$1;->val$controller:Lzn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthError(Lcom/iflytek/common/adaptation/entity/SimCard;II)V
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "errorCode"    # I

    .prologue
    .line 148
    const-string/jumbo v0, "NotificationQuickSettingFragment"

    const-string/jumbo v1, "authentication listener has been called, authentication fail."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method

.method public onAuthResult(Lcom/iflytek/common/adaptation/entity/SimCard;ILcom/iflytek/common/cmccauth/entities/AuthenticationInfo;)V
    .locals 2
    .param p1, "simCard"    # Lcom/iflytek/common/adaptation/entity/SimCard;
    .param p2, "type"    # I
    .param p3, "info"    # Lcom/iflytek/common/cmccauth/entities/AuthenticationInfo;

    .prologue
    .line 141
    const-string/jumbo v0, "NotificationQuickSettingFragment"

    const-string/jumbo v1, "authentication listener has been called, authentication success."

    invoke-static {v0, v1}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment$1;->this$0:Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;->access$000(Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment;Z)V

    .line 143
    iget-object v0, p0, Lcom/iflytek/viafly/settings/ui/NotificationQuickSettingFragment$1;->val$controller:Lzn;

    invoke-virtual {v0}, Lzn;->t()V

    .line 144
    return-void
.end method
