.class final Lcom/google/protobuf/GeneratedMessageLite$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/b",
        "<",
        "Lcom/google/protobuf/GeneratedMessageLite$a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;"
        }
    .end annotation
.end field

.field private final b:I

.field private final c:Lcom/google/protobuf/c$a;

.field private final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/c$a;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;I",
            "Lcom/google/protobuf/c$a;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->a:Lcom/google/protobuf/Internal$EnumLiteMap;

    iput p2, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:I

    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/c$a;

    iput-boolean p4, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->d:Z

    iput-boolean p5, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/c$a;ZZLcom/google/protobuf/GeneratedMessageLite$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$a;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/c$a;ZZ)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:I

    return v0
.end method

.method public a(Lcom/google/protobuf/GeneratedMessageLite$a;)I
    .locals 2

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->b:I

    iget v1, p1, Lcom/google/protobuf/GeneratedMessageLite$a;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public b()Lcom/google/protobuf/c$a;
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$a;->c:Lcom/google/protobuf/c$a;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$a;->a(Lcom/google/protobuf/GeneratedMessageLite$a;)I

    move-result v0

    return v0
.end method
