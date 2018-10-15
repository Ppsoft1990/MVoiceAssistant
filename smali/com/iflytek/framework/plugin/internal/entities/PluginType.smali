.class public Lcom/iflytek/framework/plugin/internal/entities/PluginType;
.super Ljava/lang/Object;
.source "PluginType.java"


# static fields
.field public static final PLUGIN_ADAPTER:I = 0x5

.field public static final PLUGIN_CALL:I = 0x64

.field public static final PLUGIN_CARMODE:I = 0x3

.field public static final PLUGIN_GP_MOBIUS:I = 0x12d

.field public static final PLUGIN_INPUT_METHOD:I = 0x9

.field public static final PLUGIN_KU_YIN:I = 0x14

.field public static final PLUGIN_LOCKSCREEN:I = 0x4

.field public static final PLUGIN_OFFLINE_SPEECH:I = 0x1

.field public static final PLUGIN_ORAL_GAME:I = 0x6

.field public static final PLUGIN_SCHEDULE:I = 0x66

.field public static final PLUGIN_SMARTHOME:I = 0xcd

.field public static final PLUGIN_SOUGOU_HMT:I = 0x7

.field public static final PLUGIN_SPOKEEVALUTE:I = 0x2

.field public static final PLUGIN_STAR_VOICE:I = 0x8

.field public static final PLUGIN_TV:I = 0xc8

.field public static final PLUGIN_TV_REMOTE:I = 0xe

.field public static final PLUGIN_UNKNOWN:I = 0x0

.field public static final PLUGIN_VOICEBOX:I = 0xcc

.field public static final PlUGIN_TRANSLATE:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toList(I)Ljava/util/List;
    .locals 2
    .param p0, "pluginType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    return-object v0
.end method
