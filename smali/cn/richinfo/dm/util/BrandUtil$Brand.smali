.class public final enum Lcn/richinfo/dm/util/BrandUtil$Brand;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/richinfo/dm/util/BrandUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Brand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/richinfo/dm/util/BrandUtil$Brand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/richinfo/dm/util/BrandUtil$Brand;

.field public static final enum HUAWEI:Lcn/richinfo/dm/util/BrandUtil$Brand;

.field public static final enum SAMSUNG:Lcn/richinfo/dm/util/BrandUtil$Brand;

.field public static final enum UNKNOWN:Lcn/richinfo/dm/util/BrandUtil$Brand;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/richinfo/dm/util/BrandUtil$Brand;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcn/richinfo/dm/util/BrandUtil$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/richinfo/dm/util/BrandUtil$Brand;->UNKNOWN:Lcn/richinfo/dm/util/BrandUtil$Brand;

    new-instance v0, Lcn/richinfo/dm/util/BrandUtil$Brand;

    const-string/jumbo v1, "SAMSUNG"

    invoke-direct {v0, v1, v3}, Lcn/richinfo/dm/util/BrandUtil$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/richinfo/dm/util/BrandUtil$Brand;->SAMSUNG:Lcn/richinfo/dm/util/BrandUtil$Brand;

    new-instance v0, Lcn/richinfo/dm/util/BrandUtil$Brand;

    const-string/jumbo v1, "HUAWEI"

    invoke-direct {v0, v1, v4}, Lcn/richinfo/dm/util/BrandUtil$Brand;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/richinfo/dm/util/BrandUtil$Brand;->HUAWEI:Lcn/richinfo/dm/util/BrandUtil$Brand;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/richinfo/dm/util/BrandUtil$Brand;

    sget-object v1, Lcn/richinfo/dm/util/BrandUtil$Brand;->UNKNOWN:Lcn/richinfo/dm/util/BrandUtil$Brand;

    aput-object v1, v0, v2

    sget-object v1, Lcn/richinfo/dm/util/BrandUtil$Brand;->SAMSUNG:Lcn/richinfo/dm/util/BrandUtil$Brand;

    aput-object v1, v0, v3

    sget-object v1, Lcn/richinfo/dm/util/BrandUtil$Brand;->HUAWEI:Lcn/richinfo/dm/util/BrandUtil$Brand;

    aput-object v1, v0, v4

    sput-object v0, Lcn/richinfo/dm/util/BrandUtil$Brand;->$VALUES:[Lcn/richinfo/dm/util/BrandUtil$Brand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/richinfo/dm/util/BrandUtil$Brand;
    .locals 1

    const-class v0, Lcn/richinfo/dm/util/BrandUtil$Brand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/richinfo/dm/util/BrandUtil$Brand;

    return-object v0
.end method

.method public static values()[Lcn/richinfo/dm/util/BrandUtil$Brand;
    .locals 1

    sget-object v0, Lcn/richinfo/dm/util/BrandUtil$Brand;->$VALUES:[Lcn/richinfo/dm/util/BrandUtil$Brand;

    invoke-virtual {v0}, [Lcn/richinfo/dm/util/BrandUtil$Brand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/richinfo/dm/util/BrandUtil$Brand;

    return-object v0
.end method
