.class Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$s;
.super Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;
.source "IPackageManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "s"
.end annotation


# instance fields
.field final synthetic a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;


# direct methods
.method public constructor <init>(Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1022
    iput-object p1, p0, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$s;->a:Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;

    .line 1023
    invoke-direct {p0, p2}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;-><init>(Landroid/content/Context;)V

    .line 1024
    return-void
.end method


# virtual methods
.method protected afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 22
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
    .line 1039
    :try_start_0
    invoke-static/range {p4 .. p4}, Lcom/iflytek/greenplug/common/utils/compat/ParceledListSliceCompat;->isParceledListSlice(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1040
    sget v17, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v18, 0x12

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_1

    .line 1041
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string/jumbo v18, "getList"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/iflytek/greenplug/common/utils/reflect/MethodUtils;->getAccessibleMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 1042
    .local v6, "getListMethod":Ljava/lang/reflect/Method;
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1043
    .local v3, "data":Ljava/util/List;
    const/4 v7, 0x0

    .line 1044
    .local v7, "index0":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_0

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1045
    const/16 v17, 0x0

    aget-object v17, p3, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1046
    .local v5, "flags":I
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/iflytek/greenplug/client/PluginManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v9

    .line 1047
    .local v9, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 1048
    invoke-interface {v3, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1102
    .end local v3    # "data":Ljava/util/List;
    .end local v5    # "flags":I
    .end local v6    # "getListMethod":Ljava/lang/reflect/Method;
    .end local v7    # "index0":I
    .end local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_0
    :goto_0
    invoke-super/range {p0 .. p4}, Lcom/iflytek/greenplug/client/hook/HookedMethodHandler;->afterInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1103
    return-void

    .line 1052
    :cond_1
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string/jumbo v18, "isLastSlice"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    .line 1053
    .local v11, "isLastSliceMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string/jumbo v18, "setLastSlice"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    sget-object v21, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v16

    .line 1054
    .local v16, "setLastSlice":Ljava/lang/reflect/Method;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string/jumbo v18, "append"

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Landroid/os/Parcelable;

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1055
    .local v2, "appendMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    const-string/jumbo v18, "populateList"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-class v21, Ljava/util/List;

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-class v21, Landroid/os/Parcelable$Creator;

    aput-object v21, v19, v20

    invoke-virtual/range {v17 .. v19}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    .line 1056
    .local v15, "populateList":Ljava/lang/reflect/Method;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1057
    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1059
    :cond_2
    invoke-virtual {v15}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v17

    if-nez v17, :cond_3

    .line 1060
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1062
    :cond_3
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v17

    if-nez v17, :cond_4

    .line 1063
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1065
    :cond_4
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v17

    if-nez v17, :cond_5

    .line 1066
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1068
    :cond_5
    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Boolean;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 1069
    .local v10, "isLastSlice":Z
    if-eqz v10, :cond_0

    .line 1070
    const/4 v7, 0x0

    .line 1071
    .restart local v7    # "index0":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_0

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1072
    const/16 v17, 0x0

    aget-object v17, p3, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1073
    .restart local v5    # "flags":I
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/iflytek/greenplug/client/PluginManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v9

    .line 1074
    .restart local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 1075
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1076
    .local v13, "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v13, v17, v18

    const/16 v18, 0x1

    sget-object v19, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    aput-object v19, v17, v18

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v15, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1077
    invoke-interface {v13, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1078
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v14

    .line 1079
    .local v14, "parceledListSlice":Ljava/lang/Object;
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 1080
    .local v8, "info":Landroid/content/pm/ApplicationInfo;
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v8, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v2, v14, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1099
    .end local v2    # "appendMethod":Ljava/lang/reflect/Method;
    .end local v5    # "flags":I
    .end local v7    # "index0":I
    .end local v8    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v10    # "isLastSlice":Z
    .end local v11    # "isLastSliceMethod":Ljava/lang/reflect/Method;
    .end local v13    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "parceledListSlice":Ljava/lang/Object;
    .end local v15    # "populateList":Ljava/lang/reflect/Method;
    .end local v16    # "setLastSlice":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 1100
    .local v4, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle;->access$000()Ljava/lang/String;

    move-result-object v17

    const-string/jumbo v18, "fake getInstalledApplications"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcom/iflytek/greenplug/common/utils/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1082
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v2    # "appendMethod":Ljava/lang/reflect/Method;
    .restart local v5    # "flags":I
    .restart local v7    # "index0":I
    .restart local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v10    # "isLastSlice":Z
    .restart local v11    # "isLastSliceMethod":Ljava/lang/reflect/Method;
    .restart local v13    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v14    # "parceledListSlice":Ljava/lang/Object;
    .restart local v15    # "populateList":Ljava/lang/reflect/Method;
    .restart local v16    # "setLastSlice":Ljava/lang/reflect/Method;
    :cond_6
    const/16 v17, 0x1

    :try_start_2
    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v19

    aput-object v19, v17, v18

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v14, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1083
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/iflytek/greenplug/client/hook/handle/IPackageManagerHookHandle$s;->setFakedResult(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1088
    .end local v2    # "appendMethod":Ljava/lang/reflect/Method;
    .end local v5    # "flags":I
    .end local v7    # "index0":I
    .end local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v10    # "isLastSlice":Z
    .end local v11    # "isLastSliceMethod":Ljava/lang/reflect/Method;
    .end local v13    # "packageInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v14    # "parceledListSlice":Ljava/lang/Object;
    .end local v15    # "populateList":Ljava/lang/reflect/Method;
    .end local v16    # "setLastSlice":Ljava/lang/reflect/Method;
    :cond_7
    move-object/from16 v0, p4

    instance-of v0, v0, Ljava/util/List;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1089
    const/4 v7, 0x0

    .line 1090
    .restart local v7    # "index0":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_0

    const/16 v17, 0x0

    aget-object v17, p3, v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v17, v0

    if-eqz v17, :cond_0

    .line 1091
    const/16 v17, 0x0

    aget-object v17, p3, v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1092
    .restart local v5    # "flags":I
    invoke-static {}, Lcom/iflytek/greenplug/client/PluginManager;->getInstance()Lcom/iflytek/greenplug/client/PluginManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/iflytek/greenplug/client/PluginManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v9

    .line 1093
    .restart local v9    # "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_0

    .line 1094
    move-object/from16 v0, p4

    check-cast v0, Ljava/util/List;

    move-object v12, v0

    .line 1095
    .local v12, "old":Ljava/util/List;
    invoke-interface {v12, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
