.class public final enum Lcom/migu/uem/bean/NetType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/migu/uem/bean/NetType;

.field public static final enum TYPE_2G:Lcom/migu/uem/bean/NetType;

.field public static final enum TYPE_3G:Lcom/migu/uem/bean/NetType;

.field public static final enum TYPE_4G:Lcom/migu/uem/bean/NetType;

.field public static final enum TYPE_NULL:Lcom/migu/uem/bean/NetType;

.field public static final enum TYPE_WIFI:Lcom/migu/uem/bean/NetType;


# instance fields
.field private final value:Ljava/lang/String;

.field private final valueInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/migu/uem/bean/NetType;

    const-string/jumbo v1, "TYPE_NULL"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/migu/uem/bean/NetType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/migu/uem/bean/NetType;->TYPE_NULL:Lcom/migu/uem/bean/NetType;

    new-instance v0, Lcom/migu/uem/bean/NetType;

    const-string/jumbo v1, "TYPE_2G"

    const-string/jumbo v2, "2G"

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/migu/uem/bean/NetType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/migu/uem/bean/NetType;->TYPE_2G:Lcom/migu/uem/bean/NetType;

    new-instance v0, Lcom/migu/uem/bean/NetType;

    const-string/jumbo v1, "TYPE_3G"

    const-string/jumbo v2, "3G"

    invoke-direct {v0, v1, v5, v2, v5}, Lcom/migu/uem/bean/NetType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/migu/uem/bean/NetType;->TYPE_3G:Lcom/migu/uem/bean/NetType;

    new-instance v0, Lcom/migu/uem/bean/NetType;

    const-string/jumbo v1, "TYPE_4G"

    const-string/jumbo v2, "4G"

    invoke-direct {v0, v1, v6, v2, v6}, Lcom/migu/uem/bean/NetType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/migu/uem/bean/NetType;->TYPE_4G:Lcom/migu/uem/bean/NetType;

    new-instance v0, Lcom/migu/uem/bean/NetType;

    const-string/jumbo v1, "TYPE_WIFI"

    const-string/jumbo v2, "WIFI"

    invoke-direct {v0, v1, v7, v2, v7}, Lcom/migu/uem/bean/NetType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/migu/uem/bean/NetType;->TYPE_WIFI:Lcom/migu/uem/bean/NetType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/migu/uem/bean/NetType;

    sget-object v1, Lcom/migu/uem/bean/NetType;->TYPE_NULL:Lcom/migu/uem/bean/NetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/migu/uem/bean/NetType;->TYPE_2G:Lcom/migu/uem/bean/NetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/migu/uem/bean/NetType;->TYPE_3G:Lcom/migu/uem/bean/NetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/migu/uem/bean/NetType;->TYPE_4G:Lcom/migu/uem/bean/NetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/migu/uem/bean/NetType;->TYPE_WIFI:Lcom/migu/uem/bean/NetType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/migu/uem/bean/NetType;->$VALUES:[Lcom/migu/uem/bean/NetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/migu/uem/bean/NetType;->value:Ljava/lang/String;

    iput p4, p0, Lcom/migu/uem/bean/NetType;->valueInt:I

    return-void
.end method

.method public static valueOf(I)Lcom/migu/uem/bean/NetType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/migu/uem/bean/NetType;->TYPE_NULL:Lcom/migu/uem/bean/NetType;

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/migu/uem/bean/NetType;->TYPE_NULL:Lcom/migu/uem/bean/NetType;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/migu/uem/bean/NetType;->TYPE_2G:Lcom/migu/uem/bean/NetType;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/migu/uem/bean/NetType;->TYPE_3G:Lcom/migu/uem/bean/NetType;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/migu/uem/bean/NetType;->TYPE_4G:Lcom/migu/uem/bean/NetType;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/migu/uem/bean/NetType;->TYPE_WIFI:Lcom/migu/uem/bean/NetType;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/migu/uem/bean/NetType;
    .locals 1

    const-class v0, Lcom/migu/uem/bean/NetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/migu/uem/bean/NetType;

    return-object v0
.end method

.method public static values()[Lcom/migu/uem/bean/NetType;
    .locals 1

    sget-object v0, Lcom/migu/uem/bean/NetType;->$VALUES:[Lcom/migu/uem/bean/NetType;

    invoke-virtual {v0}, [Lcom/migu/uem/bean/NetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/migu/uem/bean/NetType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/migu/uem/bean/NetType;->value:Ljava/lang/String;

    return-object v0
.end method

.method public final getValueInt()I
    .locals 1

    iget v0, p0, Lcom/migu/uem/bean/NetType;->valueInt:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/migu/uem/bean/NetType;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
