.class public final enum Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
.super Ljava/lang/Enum;
.source "PluginStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

.field public static final enum installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

.field public static final enum installing:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

.field public static final enum not_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

.field public static final enum outside_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

.field public static final enum updating:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    const-string/jumbo v1, "not_installed"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->not_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    .line 10
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    const-string/jumbo v1, "installing"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->installing:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    .line 11
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    const-string/jumbo v1, "outside_installed"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->outside_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    .line 12
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    const-string/jumbo v1, "installed"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    .line 13
    new-instance v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    const-string/jumbo v1, "updating"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->updating:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->not_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->installing:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->outside_installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->installed:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->updating:Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->$VALUES:[Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->$VALUES:[Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    invoke-virtual {v0}, [Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/viafly/pluginmanagernew/entities/PluginStatus;

    return-object v0
.end method
