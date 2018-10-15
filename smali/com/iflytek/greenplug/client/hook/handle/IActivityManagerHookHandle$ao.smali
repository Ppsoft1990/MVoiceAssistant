.class Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;
.super Lrt;
.source "IActivityManagerHookHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ao"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "hostContext"    # Landroid/content/Context;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lrt;-><init>(Landroid/content/Context;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Object;)Z
    .locals 10
    .param p1, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 157
    invoke-static {p1}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$000([Ljava/lang/Object;)I

    move-result v3

    .line 158
    .local v3, "intentOfArgIndex":I
    if-eqz p1, :cond_3

    array-length v6, p1

    if-le v6, v9, :cond_3

    if-ltz v3, :cond_3

    .line 159
    aget-object v2, p1, v3

    check-cast v2, Landroid/content/Intent;

    .line 162
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {v2}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$100(Landroid/content/Intent;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 164
    .local v0, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_3

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 166
    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 169
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;->mHostContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$300(Landroid/content/Context;Landroid/content/pm/ActivityInfo;)Landroid/content/ComponentName;

    move-result-object v4

    .line 170
    .local v4, "stubComponent":Landroid/content/ComponentName;
    if-eqz v4, :cond_4

    .line 172
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v5, "stubIntent":Landroid/content/Intent;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v6, "com.iflytek.greenplug.OldIntent"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 177
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    iget v6, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_0

    .line 180
    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 182
    :cond_0
    iget v6, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v6, v6, 0x20

    if-eqz v6, :cond_1

    .line 183
    const/high16 v6, 0x800000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    :cond_1
    aput-object v5, p1, v3

    .line 188
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x12

    if-lt v6, v7, :cond_3

    .line 189
    aget-object v1, p1, v9

    check-cast v1, Ljava/lang/String;

    .line 190
    .local v1, "callingPackage":Ljava/lang/String;
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;->mHostContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 192
    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    :cond_2
    iget-object v6, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;->mHostContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, p1, v9

    .line 201
    .end local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v1    # "callingPackage":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "stubComponent":Landroid/content/ComponentName;
    .end local v5    # "stubIntent":Landroid/content/Intent;
    :cond_3
    :goto_0
    return v9

    .line 197
    .restart local v0    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v4    # "stubComponent":Landroid/content/ComponentName;
    :cond_4
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "startActivity, selectProxyActivity fail"

    invoke-static {v6, v7}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .locals 12
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$000([Ljava/lang/Object;)I

    move-result v4

    .line 207
    .local v4, "intentOfArgIndex":I
    if-eqz p3, :cond_4

    array-length v10, p3

    const/4 v11, 0x1

    if-le v10, v11, :cond_4

    if-ltz v4, :cond_4

    .line 208
    aget-object v3, p3, v4

    check-cast v3, Landroid/content/Intent;

    .line 210
    .local v3, "intent":Landroid/content/Intent;
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x17

    if-lt v10, v11, :cond_0

    .line 212
    const-string/jumbo v10, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 213
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v9

    .line 214
    .local v9, "uri":Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 215
    invoke-virtual {v9}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "package"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 217
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "package:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;->mHostContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 223
    .end local v9    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v2, 0x0

    .line 225
    .local v2, "external":Z
    :try_start_0
    const-string/jumbo v10, "com.iflytek.greenplug.external.activity"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 244
    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 245
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "intent.getBooleanExtra(Env.EXTRA_EXTERNAL_ACTIVITY) is true"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 249
    .local v5, "invokeResult":Ljava/lang/Object;
    if-eqz v5, :cond_4

    instance-of v10, v5, Ljava/lang/Integer;

    if-eqz v10, :cond_4

    move-object v8, v5

    .line 250
    check-cast v8, Ljava/lang/Integer;

    .line 251
    .local v8, "result":Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ltz v10, :cond_4

    .line 253
    invoke-virtual {p0, v5}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;->setFakedResult(Ljava/lang/Object;)V

    .line 254
    const/4 v10, 0x1

    .line 266
    .end local v2    # "external":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "invokeResult":Ljava/lang/Object;
    .end local v8    # "result":Ljava/lang/Integer;
    :goto_1
    return v10

    .line 226
    .restart local v2    # "external":Z
    .restart local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 229
    .local v1, "e":Ljava/lang/Exception;
    instance-of v10, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v10, :cond_1

    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x13

    if-gt v10, v11, :cond_1

    .line 230
    invoke-static {}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$400()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "startActivity ClassNotFoundException, so try set pluginClassLoader for intent extra"

    invoke-static {v10, v11}, Lcom/iflytek/greenplug/common/utils/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v6

    .line 232
    .local v6, "packageName":Ljava/lang/String;
    if-nez v6, :cond_2

    .line 233
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 235
    :cond_2
    invoke-static {v6}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle;->access$200(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 236
    invoke-static {v6}, Lcom/iflytek/greenplug/client/PluginApplicationHelper;->getPluginClassLoader(Ljava/lang/String;)Ljava/lang/ClassLoader;

    move-result-object v7

    .line 237
    .local v7, "pluginClassLoader":Ljava/lang/ClassLoader;
    if-eqz v7, :cond_3

    .line 238
    invoke-virtual {v3, v7}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 241
    .end local v7    # "pluginClassLoader":Ljava/lang/ClassLoader;
    :cond_3
    const-string/jumbo v10, "com.iflytek.greenplug.external.activity"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    .line 261
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "external":Z
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0, p3}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;->a([Ljava/lang/Object;)Z

    move-result v0

    .line 262
    .local v0, "bRet":Z
    if-nez v0, :cond_5

    .line 263
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/iflytek/greenplug/client/hook/handle/IActivityManagerHookHandle$ao;->setFakedResult(Ljava/lang/Object;)V

    .line 264
    const/4 v10, 0x1

    goto :goto_1

    .line 266
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lrt;->beforeInvoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z

    move-result v10

    goto :goto_1
.end method
