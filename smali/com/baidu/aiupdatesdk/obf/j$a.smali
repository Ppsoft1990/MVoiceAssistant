.class final enum Lcom/baidu/aiupdatesdk/obf/j$a;
.super Ljava/lang/Enum;
.source "FileHttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/aiupdatesdk/obf/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/baidu/aiupdatesdk/obf/j$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/baidu/aiupdatesdk/obf/j$a;

.field public static final enum b:Lcom/baidu/aiupdatesdk/obf/j$a;

.field public static final enum c:Lcom/baidu/aiupdatesdk/obf/j$a;

.field public static final enum d:Lcom/baidu/aiupdatesdk/obf/j$a;

.field public static final enum e:Lcom/baidu/aiupdatesdk/obf/j$a;

.field private static final synthetic f:[Lcom/baidu/aiupdatesdk/obf/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/baidu/aiupdatesdk/obf/j$a;

    const-string/jumbo v1, "NULL"

    invoke-direct {v0, v1, v2}, Lcom/baidu/aiupdatesdk/obf/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/j$a;->a:Lcom/baidu/aiupdatesdk/obf/j$a;

    new-instance v0, Lcom/baidu/aiupdatesdk/obf/j$a;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/baidu/aiupdatesdk/obf/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/j$a;->b:Lcom/baidu/aiupdatesdk/obf/j$a;

    new-instance v0, Lcom/baidu/aiupdatesdk/obf/j$a;

    const-string/jumbo v1, "DOWNLIADING"

    invoke-direct {v0, v1, v4}, Lcom/baidu/aiupdatesdk/obf/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/j$a;->c:Lcom/baidu/aiupdatesdk/obf/j$a;

    new-instance v0, Lcom/baidu/aiupdatesdk/obf/j$a;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v5}, Lcom/baidu/aiupdatesdk/obf/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/j$a;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    new-instance v0, Lcom/baidu/aiupdatesdk/obf/j$a;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/baidu/aiupdatesdk/obf/j$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/j$a;->e:Lcom/baidu/aiupdatesdk/obf/j$a;

    .line 36
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/baidu/aiupdatesdk/obf/j$a;

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/j$a;->a:Lcom/baidu/aiupdatesdk/obf/j$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/j$a;->b:Lcom/baidu/aiupdatesdk/obf/j$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/j$a;->c:Lcom/baidu/aiupdatesdk/obf/j$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/j$a;->d:Lcom/baidu/aiupdatesdk/obf/j$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/aiupdatesdk/obf/j$a;->e:Lcom/baidu/aiupdatesdk/obf/j$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/baidu/aiupdatesdk/obf/j$a;->f:[Lcom/baidu/aiupdatesdk/obf/j$a;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/aiupdatesdk/obf/j$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/baidu/aiupdatesdk/obf/j$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/baidu/aiupdatesdk/obf/j$a;

    return-object v0
.end method

.method public static values()[Lcom/baidu/aiupdatesdk/obf/j$a;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/baidu/aiupdatesdk/obf/j$a;->f:[Lcom/baidu/aiupdatesdk/obf/j$a;

    invoke-virtual {v0}, [Lcom/baidu/aiupdatesdk/obf/j$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/aiupdatesdk/obf/j$a;

    return-object v0
.end method
