.class public final Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;
.super Ljava/lang/Object;
.source "PluginDefaultConfig.java"


# static fields
.field private static mBasicPluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPluginIdMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPluginMinVersionMap:Landroid/util/SparseIntArray;

.field private static mPluginPackageMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSmartHomePluginList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 27
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    .line 28
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 29
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 31
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 32
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 33
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 35
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 36
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 38
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    .line 39
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "b887d5f3-9383-4e21-830c-cd3f99d1e356"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "9F9E6733-491C-4E81-9417-45E92F12DD92"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "5BAFB671-638A-0E9D-8F4D-642F63538968"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "AE7955C0-8AB5-597D-8BE3-35BFEE9D6728"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "9E70700C-F4B8-2855-66D1-3ED1E0DB48DE"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "D0162242-8307-A033-443C-AB66960CA5B6"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 45
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string/jumbo v2, "81B5A0A4-7E4D-AA57-168F-64AE6E376749"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string/jumbo v2, "FDA06EE9-F9D0-9DE2-248D-AF796E01FABB"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 47
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const/16 v1, 0xcd

    const-string/jumbo v2, "4D3CBE81-08B6-AF9A-DB62-3E686A21882C"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 48
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    const/16 v1, 0x12d

    const-string/jumbo v2, "1e53509d-22c4-4f7e-9b4a-8a3176e3bb0d"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    .line 51
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "com.iflytek.cmcc"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 52
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "com.iflytek.cmcc"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 53
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "com.iflytek.lockscreen"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 54
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "com.iflytek.cmcc"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 55
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "com.iflytek.cmcc"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 56
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string/jumbo v2, "com.iflytek.oralgame"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string/jumbo v2, "com.iflytek.cmcc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 58
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string/jumbo v2, "com.iflytek.cmcc"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const/16 v1, 0xcd

    const-string/jumbo v2, "com.iflytek.cmcc.xhome"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 61
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    const/16 v1, 0x12d

    const-string/jumbo v2, "com.cmcc.viafly.headset"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mBasicPluginList:Ljava/util/ArrayList;

    .line 64
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mBasicPluginList:Ljava/util/ArrayList;

    const-string/jumbo v1, "basic_plugin/call.ini"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mBasicPluginList:Ljava/util/ArrayList;

    const-string/jumbo v1, "basic_plugin/sms.ini"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mBasicPluginList:Ljava/util/ArrayList;

    const-string/jumbo v1, "basic_plugin/schedule.ini"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mBasicPluginList:Ljava/util/ArrayList;

    const-string/jumbo v1, "basic_plugin/translate.ini"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mBasicPluginList:Ljava/util/ArrayList;

    const-string/jumbo v1, "basic_plugin/contact.ini"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBasicPlugin()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mBasicPluginList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static getConfigMap()Landroid/util/SparseIntArray;
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginMinVersionMap:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method public static getDefaultApkPluginIds()[I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x4
        0x6
        0xcd
    .end array-data
.end method

.method public static getPluginIdWithType(I)Ljava/lang/String;
    .locals 1
    .param p0, "pluginType"    # I

    .prologue
    .line 89
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPluginPackageWithType(I)Ljava/lang/String;
    .locals 1
    .param p0, "pluginType"    # I

    .prologue
    .line 98
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getPluginTypeWithId(Ljava/lang/String;)I
    .locals 4
    .param p0, "pluginId"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 106
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v3, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 111
    sget-object v3, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 113
    sget-object v2, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    goto :goto_0

    .line 110
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getSmartHomePlugin()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mSmartHomePluginList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static isDefaultAPKPlugin(I)Z
    .locals 5
    .param p0, "pluginType"    # I

    .prologue
    const/4 v2, 0x0

    .line 165
    invoke-static {}, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->getDefaultApkPluginIds()[I

    move-result-object v0

    .line 166
    .local v0, "defaultApkTypes":[I
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 167
    array-length v4, v0

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .line 168
    .local v1, "type":I
    if-ne v1, p0, :cond_1

    .line 169
    const/4 v2, 0x1

    .line 173
    .end local v1    # "type":I
    :cond_0
    return v2

    .line 167
    .restart local v1    # "type":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static registerPluginTypeWithId(ILjava/lang/String;)Z
    .locals 2
    .param p0, "pluginType"    # I
    .param p1, "pluginId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 125
    if-nez p1, :cond_1

    .line 134
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    sget-object v1, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 129
    sget-object v1, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 130
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginIdMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static registerPluginTypeWithPackage(ILjava/lang/String;)Z
    .locals 2
    .param p0, "pluginType"    # I
    .param p1, "pluginPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 142
    if-nez p1, :cond_1

    .line 151
    :cond_0
    :goto_0
    return v0

    .line 145
    :cond_1
    sget-object v1, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 146
    sget-object v1, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 147
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginDefaultConfig;->mPluginPackageMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method
