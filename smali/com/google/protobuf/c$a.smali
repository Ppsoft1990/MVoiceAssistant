.class public enum Lcom/google/protobuf/c$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/protobuf/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/protobuf/c$a;

.field public static final enum b:Lcom/google/protobuf/c$a;

.field public static final enum c:Lcom/google/protobuf/c$a;

.field public static final enum d:Lcom/google/protobuf/c$a;

.field public static final enum e:Lcom/google/protobuf/c$a;

.field public static final enum f:Lcom/google/protobuf/c$a;

.field public static final enum g:Lcom/google/protobuf/c$a;

.field public static final enum h:Lcom/google/protobuf/c$a;

.field public static final enum i:Lcom/google/protobuf/c$a;

.field public static final enum j:Lcom/google/protobuf/c$a;

.field public static final enum k:Lcom/google/protobuf/c$a;

.field public static final enum l:Lcom/google/protobuf/c$a;

.field public static final enum m:Lcom/google/protobuf/c$a;

.field public static final enum n:Lcom/google/protobuf/c$a;

.field public static final enum o:Lcom/google/protobuf/c$a;

.field public static final enum p:Lcom/google/protobuf/c$a;

.field public static final enum q:Lcom/google/protobuf/c$a;

.field public static final enum r:Lcom/google/protobuf/c$a;

.field private static final synthetic u:[Lcom/google/protobuf/c$a;


# instance fields
.field private final s:Lcom/google/protobuf/c$b;

.field private final t:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "DOUBLE"

    sget-object v2, Lcom/google/protobuf/c$b;->d:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v4, v2, v5}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->a:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "FLOAT"

    sget-object v2, Lcom/google/protobuf/c$b;->c:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v5, v2, v7}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->b:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "INT64"

    sget-object v2, Lcom/google/protobuf/c$b;->b:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v6, v2, v4}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->c:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "UINT64"

    sget-object v2, Lcom/google/protobuf/c$b;->b:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v8, v2, v4}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->d:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "INT32"

    const/4 v2, 0x4

    sget-object v3, Lcom/google/protobuf/c$b;->a:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->e:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "FIXED64"

    sget-object v2, Lcom/google/protobuf/c$b;->b:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v7, v2, v5}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->f:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "FIXED32"

    const/4 v2, 0x6

    sget-object v3, Lcom/google/protobuf/c$b;->a:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->g:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "BOOL"

    const/4 v2, 0x7

    sget-object v3, Lcom/google/protobuf/c$b;->e:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->h:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/d;

    const-string/jumbo v1, "STRING"

    const/16 v2, 0x8

    sget-object v3, Lcom/google/protobuf/c$b;->f:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/protobuf/d;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->i:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/e;

    const-string/jumbo v1, "GROUP"

    const/16 v2, 0x9

    sget-object v3, Lcom/google/protobuf/c$b;->i:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/google/protobuf/e;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->j:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/f;

    const-string/jumbo v1, "MESSAGE"

    const/16 v2, 0xa

    sget-object v3, Lcom/google/protobuf/c$b;->i:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/protobuf/f;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->k:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/g;

    const-string/jumbo v1, "BYTES"

    const/16 v2, 0xb

    sget-object v3, Lcom/google/protobuf/c$b;->g:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/google/protobuf/g;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->l:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "UINT32"

    const/16 v2, 0xc

    sget-object v3, Lcom/google/protobuf/c$b;->a:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->m:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "ENUM"

    const/16 v2, 0xd

    sget-object v3, Lcom/google/protobuf/c$b;->h:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->n:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "SFIXED32"

    const/16 v2, 0xe

    sget-object v3, Lcom/google/protobuf/c$b;->a:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->o:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "SFIXED64"

    const/16 v2, 0xf

    sget-object v3, Lcom/google/protobuf/c$b;->b:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->p:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "SINT32"

    const/16 v2, 0x10

    sget-object v3, Lcom/google/protobuf/c$b;->a:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->q:Lcom/google/protobuf/c$a;

    new-instance v0, Lcom/google/protobuf/c$a;

    const-string/jumbo v1, "SINT64"

    const/16 v2, 0x11

    sget-object v3, Lcom/google/protobuf/c$b;->b:Lcom/google/protobuf/c$b;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    sput-object v0, Lcom/google/protobuf/c$a;->r:Lcom/google/protobuf/c$a;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/google/protobuf/c$a;

    sget-object v1, Lcom/google/protobuf/c$a;->a:Lcom/google/protobuf/c$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/protobuf/c$a;->b:Lcom/google/protobuf/c$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/protobuf/c$a;->c:Lcom/google/protobuf/c$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/protobuf/c$a;->d:Lcom/google/protobuf/c$a;

    aput-object v1, v0, v8

    const/4 v1, 0x4

    sget-object v2, Lcom/google/protobuf/c$a;->e:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    sget-object v1, Lcom/google/protobuf/c$a;->f:Lcom/google/protobuf/c$a;

    aput-object v1, v0, v7

    const/4 v1, 0x6

    sget-object v2, Lcom/google/protobuf/c$a;->g:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/protobuf/c$a;->h:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/protobuf/c$a;->i:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/protobuf/c$a;->j:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/protobuf/c$a;->k:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/protobuf/c$a;->l:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/protobuf/c$a;->m:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/protobuf/c$a;->n:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/google/protobuf/c$a;->o:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/google/protobuf/c$a;->p:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/google/protobuf/c$a;->q:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/google/protobuf/c$a;->r:Lcom/google/protobuf/c$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/protobuf/c$a;->u:[Lcom/google/protobuf/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/c$b;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/protobuf/c$a;->s:Lcom/google/protobuf/c$b;

    iput p4, p0, Lcom/google/protobuf/c$a;->t:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/protobuf/c$b;ILcom/google/protobuf/c$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/c$a;-><init>(Ljava/lang/String;ILcom/google/protobuf/c$b;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/protobuf/c$a;
    .locals 1

    const-class v0, Lcom/google/protobuf/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/c$a;

    return-object v0
.end method

.method public static values()[Lcom/google/protobuf/c$a;
    .locals 1

    sget-object v0, Lcom/google/protobuf/c$a;->u:[Lcom/google/protobuf/c$a;

    invoke-virtual {v0}, [Lcom/google/protobuf/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/c$a;

    return-object v0
.end method
