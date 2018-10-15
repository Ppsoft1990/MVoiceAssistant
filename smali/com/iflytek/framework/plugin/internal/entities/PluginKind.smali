.class public final enum Lcom/iflytek/framework/plugin/internal/entities/PluginKind;
.super Ljava/lang/Enum;
.source "PluginKind.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/plugin/internal/entities/PluginKind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

.field public static final enum apk:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

.field public static final enum basic:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

.field public static final enum jar:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

.field public static final enum smartHome:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    const-string/jumbo v1, "basic"

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->basic:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    .line 19
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    const-string/jumbo v1, "smartHome"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->smartHome:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    .line 24
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    const-string/jumbo v1, "jar"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->jar:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    .line 29
    new-instance v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    const-string/jumbo v1, "apk"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->apk:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    sget-object v1, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->basic:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    aput-object v1, v0, v2

    sget-object v1, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->smartHome:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->jar:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->apk:Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    aput-object v1, v0, v5

    sput-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->$VALUES:[Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/plugin/internal/entities/PluginKind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/plugin/internal/entities/PluginKind;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->$VALUES:[Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    invoke-virtual {v0}, [Lcom/iflytek/framework/plugin/internal/entities/PluginKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/plugin/internal/entities/PluginKind;

    return-object v0
.end method
