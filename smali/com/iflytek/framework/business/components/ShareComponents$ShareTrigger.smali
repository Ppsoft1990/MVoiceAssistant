.class public final enum Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;
.super Ljava/lang/Enum;
.source "ShareComponents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/framework/business/components/ShareComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShareTrigger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum APP:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum BLUETOOTH_DETECTION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum DIALOG:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum FLIGHT:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum HOME:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum LOCSEARCH:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum MY_MUSIC_ORDER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum NEWS:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum STOCK:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum TRANSLATION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum UNKOWN:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

.field public static final enum WEATHER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 379
    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->HOME:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "APP"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->APP:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "FLIGHT"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->FLIGHT:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "DIALOG"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->DIALOG:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "NEWS"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->NEWS:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "LOCSEARCH"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->LOCSEARCH:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "STOCK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->STOCK:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "TRANSLATION"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->TRANSLATION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "WEATHER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->WEATHER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "BLUETOOTH_DETECTION"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->BLUETOOTH_DETECTION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "MY_MUSIC_ORDER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->MY_MUSIC_ORDER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    new-instance v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    const-string/jumbo v1, "UNKOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->UNKOWN:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    .line 378
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    sget-object v1, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->HOME:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->APP:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->FLIGHT:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->DIALOG:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->NEWS:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->LOCSEARCH:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->STOCK:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->TRANSLATION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->WEATHER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->BLUETOOTH_DETECTION:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->MY_MUSIC_ORDER:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->UNKOWN:Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->$VALUES:[Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

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
    .line 378
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 378
    const-class v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;
    .locals 1

    .prologue
    .line 378
    sget-object v0, Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->$VALUES:[Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    invoke-virtual {v0}, [Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/business/components/ShareComponents$ShareTrigger;

    return-object v0
.end method
