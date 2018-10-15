.class public final enum Lcom/iflytek/framework/business/speech/ResultGrammarType;
.super Ljava/lang/Enum;
.source "ResultGrammarType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/iflytek/framework/business/speech/ResultGrammarType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/iflytek/framework/business/speech/ResultGrammarType;

.field public static final enum cancel:Lcom/iflytek/framework/business/speech/ResultGrammarType;

.field public static final enum confirm:Lcom/iflytek/framework/business/speech/ResultGrammarType;

.field public static final enum location:Lcom/iflytek/framework/business/speech/ResultGrammarType;

.field public static final enum name:Lcom/iflytek/framework/business/speech/ResultGrammarType;

.field public static final enum number_full:Lcom/iflytek/framework/business/speech/ResultGrammarType;

.field public static final enum number_section:Lcom/iflytek/framework/business/speech/ResultGrammarType;

.field public static final enum number_type:Lcom/iflytek/framework/business/speech/ResultGrammarType;

.field public static final enum other:Lcom/iflytek/framework/business/speech/ResultGrammarType;

.field public static final enum serial_number:Lcom/iflytek/framework/business/speech/ResultGrammarType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    const-string/jumbo v1, "serial_number"

    invoke-direct {v0, v1, v3}, Lcom/iflytek/framework/business/speech/ResultGrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->serial_number:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 14
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    const-string/jumbo v1, "location"

    invoke-direct {v0, v1, v4}, Lcom/iflytek/framework/business/speech/ResultGrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->location:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 16
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    const-string/jumbo v1, "number_type"

    invoke-direct {v0, v1, v5}, Lcom/iflytek/framework/business/speech/ResultGrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_type:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 18
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    const-string/jumbo v1, "number_section"

    invoke-direct {v0, v1, v6}, Lcom/iflytek/framework/business/speech/ResultGrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_section:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 20
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    const-string/jumbo v1, "number_full"

    invoke-direct {v0, v1, v7}, Lcom/iflytek/framework/business/speech/ResultGrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_full:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 22
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    const-string/jumbo v1, "name"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/ResultGrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->name:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 24
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    const-string/jumbo v1, "confirm"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/ResultGrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->confirm:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 26
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    const-string/jumbo v1, "cancel"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/ResultGrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->cancel:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 28
    new-instance v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    const-string/jumbo v1, "other"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/iflytek/framework/business/speech/ResultGrammarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->other:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    .line 10
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/iflytek/framework/business/speech/ResultGrammarType;

    sget-object v1, Lcom/iflytek/framework/business/speech/ResultGrammarType;->serial_number:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/iflytek/framework/business/speech/ResultGrammarType;->location:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_type:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_section:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/iflytek/framework/business/speech/ResultGrammarType;->number_full:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/iflytek/framework/business/speech/ResultGrammarType;->name:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/iflytek/framework/business/speech/ResultGrammarType;->confirm:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/iflytek/framework/business/speech/ResultGrammarType;->cancel:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/iflytek/framework/business/speech/ResultGrammarType;->other:Lcom/iflytek/framework/business/speech/ResultGrammarType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->$VALUES:[Lcom/iflytek/framework/business/speech/ResultGrammarType;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/iflytek/framework/business/speech/ResultGrammarType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;

    return-object v0
.end method

.method public static values()[Lcom/iflytek/framework/business/speech/ResultGrammarType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/iflytek/framework/business/speech/ResultGrammarType;->$VALUES:[Lcom/iflytek/framework/business/speech/ResultGrammarType;

    invoke-virtual {v0}, [Lcom/iflytek/framework/business/speech/ResultGrammarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/iflytek/framework/business/speech/ResultGrammarType;

    return-object v0
.end method
