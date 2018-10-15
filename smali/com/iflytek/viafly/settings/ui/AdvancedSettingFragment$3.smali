.class Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$3;
.super Ljava/lang/Object;
.source "AdvancedSettingFragment.java"

# interfaces
.implements Lpj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->checkContactAndStoragePermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;


# direct methods
.method constructor <init>(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermissionsResult(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-static {p1}, Lazz;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    const-string/jumbo v2, "AdvancedSettingFragment"

    const-string/jumbo v3, "checkContactAndStoragePermission.onRequestPermissionsResult | results is null, importContact"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->access$200(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)V

    .line 355
    :goto_0
    return-void

    .line 336
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 337
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lpl;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lpl;

    .line 338
    .local v0, "entity":Lpl;
    invoke-virtual {v0}, Lpl;->b()Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    move-result-object v3

    sget-object v4, Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;->granted:Lcom/iflytek/common/permission/sdk23/entity/PermissionStatus;

    if-eq v3, v4, :cond_1

    .line 339
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 343
    .end local v0    # "entity":Lpl;
    :cond_2
    invoke-static {v1}, Lazz;->a(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 344
    const-string/jumbo v2, "AdvancedSettingFragment"

    const-string/jumbo v3, "checkContactAndStoragePermission.onRequestPermissionsResult | it\'s granted, importContact"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-static {v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->access$200(Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;)V

    goto :goto_0

    .line 349
    :cond_3
    const-string/jumbo v2, "AdvancedSettingFragment"

    const-string/jumbo v3, "checkContactAndStoragePermission.onRequestPermissionsResult| some permissions are denied"

    invoke-static {v2, v3}, Lhj;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v2, p0, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment$3;->this$0:Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;

    invoke-virtual {v2}, Lcom/iflytek/viafly/settings/ui/AdvancedSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lpd;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lpe;

    goto :goto_0
.end method
