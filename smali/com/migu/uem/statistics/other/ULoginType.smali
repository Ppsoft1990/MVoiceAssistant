.class public final enum Lcom/migu/uem/statistics/other/ULoginType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/migu/uem/statistics/other/ULoginType;

.field public static final enum EMAIL:Lcom/migu/uem/statistics/other/ULoginType;

.field public static final enum PHONE:Lcom/migu/uem/statistics/other/ULoginType;

.field public static final enum THIRD_ACCOUNT:Lcom/migu/uem/statistics/other/ULoginType;

.field public static final enum UNKNOWN:Lcom/migu/uem/statistics/other/ULoginType;

.field public static final enum USER_NAME:Lcom/migu/uem/statistics/other/ULoginType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v1, "PHONE"

    invoke-direct {v0, v1, v2, v3}, Lcom/migu/uem/statistics/other/ULoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/migu/uem/statistics/other/ULoginType;->PHONE:Lcom/migu/uem/statistics/other/ULoginType;

    new-instance v0, Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v1, "EMAIL"

    invoke-direct {v0, v1, v3, v4}, Lcom/migu/uem/statistics/other/ULoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/migu/uem/statistics/other/ULoginType;->EMAIL:Lcom/migu/uem/statistics/other/ULoginType;

    new-instance v0, Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v1, "USER_NAME"

    invoke-direct {v0, v1, v4, v5}, Lcom/migu/uem/statistics/other/ULoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/migu/uem/statistics/other/ULoginType;->USER_NAME:Lcom/migu/uem/statistics/other/ULoginType;

    new-instance v0, Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v1, "THIRD_ACCOUNT"

    invoke-direct {v0, v1, v5, v6}, Lcom/migu/uem/statistics/other/ULoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/migu/uem/statistics/other/ULoginType;->THIRD_ACCOUNT:Lcom/migu/uem/statistics/other/ULoginType;

    new-instance v0, Lcom/migu/uem/statistics/other/ULoginType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v6, v2}, Lcom/migu/uem/statistics/other/ULoginType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/migu/uem/statistics/other/ULoginType;->UNKNOWN:Lcom/migu/uem/statistics/other/ULoginType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/migu/uem/statistics/other/ULoginType;

    sget-object v1, Lcom/migu/uem/statistics/other/ULoginType;->PHONE:Lcom/migu/uem/statistics/other/ULoginType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/migu/uem/statistics/other/ULoginType;->EMAIL:Lcom/migu/uem/statistics/other/ULoginType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/migu/uem/statistics/other/ULoginType;->USER_NAME:Lcom/migu/uem/statistics/other/ULoginType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/migu/uem/statistics/other/ULoginType;->THIRD_ACCOUNT:Lcom/migu/uem/statistics/other/ULoginType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/migu/uem/statistics/other/ULoginType;->UNKNOWN:Lcom/migu/uem/statistics/other/ULoginType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/migu/uem/statistics/other/ULoginType;->$VALUES:[Lcom/migu/uem/statistics/other/ULoginType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/migu/uem/statistics/other/ULoginType;->value:I

    return-void
.end method

.method public static getType(I)Lcom/migu/uem/statistics/other/ULoginType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->UNKNOWN:Lcom/migu/uem/statistics/other/ULoginType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->PHONE:Lcom/migu/uem/statistics/other/ULoginType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->EMAIL:Lcom/migu/uem/statistics/other/ULoginType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->USER_NAME:Lcom/migu/uem/statistics/other/ULoginType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->THIRD_ACCOUNT:Lcom/migu/uem/statistics/other/ULoginType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/migu/uem/statistics/other/ULoginType;
    .locals 1

    const-class v0, Lcom/migu/uem/statistics/other/ULoginType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/statistics/other/ULoginType;

    return-object v0
.end method

.method public static values()[Lcom/migu/uem/statistics/other/ULoginType;
    .locals 1

    sget-object v0, Lcom/migu/uem/statistics/other/ULoginType;->$VALUES:[Lcom/migu/uem/statistics/other/ULoginType;

    invoke-virtual {v0}, [Lcom/migu/uem/statistics/other/ULoginType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/migu/uem/statistics/other/ULoginType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/migu/uem/statistics/other/ULoginType;->value:I

    return v0
.end method
