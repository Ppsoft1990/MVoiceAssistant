.class public final enum Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;
.super Ljava/lang/Enum;
.source "PluginItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

.field public static final enum default_type:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

.field public static final enum order_music_item:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

.field public static final enum plugin:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

.field public static final enum plugin_label:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

.field public static final enum plugin_translate:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 9
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    const-string/jumbo v1, "default_type"

    const/16 v2, -0x2710

    invoke-direct {v0, v1, v5, v2}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->default_type:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    .line 10
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    const-string/jumbo v1, "plugin_translate"

    invoke-direct {v0, v1, v3, v3}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->plugin_translate:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    .line 11
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    const-string/jumbo v1, "order_music_item"

    invoke-direct {v0, v1, v4, v4}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->order_music_item:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    .line 12
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    const-string/jumbo v1, "plugin_label"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->plugin_label:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    .line 13
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    const-string/jumbo v1, "plugin"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->plugin:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->default_type:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->plugin_translate:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->order_music_item:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->plugin_label:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->plugin:Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->$VALUES:[Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "typeValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->value:I

    .line 18
    iput p3, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->value:I

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->$VALUES:[Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/iflytek/viafly/pluginmanagernew/ui/pluginitem/PluginItemType;->value:I

    return v0
.end method
