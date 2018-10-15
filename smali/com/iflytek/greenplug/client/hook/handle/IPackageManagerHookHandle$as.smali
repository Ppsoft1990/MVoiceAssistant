.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$as;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "as"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 675
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$as;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 676
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 677
    return-void
.end method


# virtual methods
.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .param p4, "invokeResult"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 687
    if-eqz p3, :cond_3

    .line 688
    const/4 v1, 0x0

    .local v1, "index0":I
    const/4 v2, 0x1

    .local v2, "index1":I
    const/4 v3, 0x2

    .line 689
    .local v3, "index2":I
    const/4 v5, 0x0

    .line 690
    .local v5, "intent":Landroid/content/Intent;
    array-length v8, p3

    if-lez v8, :cond_0

    .line 691
    const/4 v8, 0x0

    aget-object v8, p3, v8

    instance-of v8, v8, Landroid/content/Intent;

    if-eqz v8, :cond_0

    .line 692
    const/4 v8, 0x0

    aget-object v5, p3, v8

    .end local v5    # "intent":Landroid/content/Intent;
    check-cast v5, Landroid/content/Intent;

    .line 696
    .restart local v5    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v7, 0x0

    .line 697
    .local v7, "resolvedType":Ljava/lang/String;
    array-length v8, p3

    const/4 v9, 0x1

    if-le v8, v9, :cond_1

    .line 698
    const/4 v8, 0x1

    aget-object v8, p3, v8

    instance-of v8, v8, Ljava/lang/String;

    if-eqz v8, :cond_1

    .line 699
    const/4 v8, 0x1

    aget-object v7, p3, v8

    .end local v7    # "resolvedType":Ljava/lang/String;
    check-cast v7, Ljava/lang/String;

    .line 703
    .restart local v7    # "resolvedType":Ljava/lang/String;
    :cond_1
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 704
    .local v0, "flags":Ljava/lang/Integer;
    array-length v8, p3

    const/4 v9, 0x2

    if-le v8, v9, :cond_2

    .line 705
    const/4 v8, 0x2

    aget-object v8, p3, v8

    instance-of v8, v8, Ljava/lang/Integer;

    if-eqz v8, :cond_2

    .line 706
    const/4 v8, 0x2

    aget-object v0, p3, v8

    .end local v0    # "flags":Ljava/lang/Integer;
    check-cast v0, Ljava/lang/Integer;

    .line 710
    .restart local v0    # "flags":Ljava/lang/Integer;
    :cond_2
    if-eqz v5, :cond_3

    .line 711
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v8

    invoke-virtual {v8, v5, v7, v0}, Lcom/iflytek/greenplug/client/PluginManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Integer;)Ljava/util/List;

    move-result-object v4

    .line 712
    .local v4, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 714
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x18

    if-lt v8, v9, :cond_4

    .line 715
    const-string/jumbo v8, "mList"

    invoke-static {p4, v8}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->readField(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 716
    .local v6, "old":Ljava/util/List;
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 717
    const-string/jumbo v8, "mList"

    invoke-static {p4, v8, v6}, Lcom/iflytek/greenplug/common/utils/reflect/FieldUtils;->writeField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 725
    .end local v0    # "flags":Ljava/lang/Integer;
    .end local v1    # "index0":I
    .end local v2    # "index1":I
    .end local v3    # "index2":I
    .end local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "old":Ljava/util/List;
    .end local v7    # "resolvedType":Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 726
    return-void

    .restart local v0    # "flags":Ljava/lang/Integer;
    .restart local v1    # "index0":I
    .restart local v2    # "index1":I
    .restart local v3    # "index2":I
    .restart local v4    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v5    # "intent":Landroid/content/Intent;
    .restart local v7    # "resolvedType":Ljava/lang/String;
    :cond_4
    move-object v6, p4

    .line 719
    check-cast v6, Ljava/util/List;

    .line 720
    .restart local v6    # "old":Ljava/util/List;
    invoke-interface {v6, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
