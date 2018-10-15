.class public final Lcom/google/protobuf/GeneratedMessageLite$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/google/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TContainingType;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TType;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/protobuf/MessageLite;

.field private final d:Lcom/google/protobuf/GeneratedMessageLite$a;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TContainingType;TType;",
            "Lcom/google/protobuf/MessageLite;",
            "Lcom/google/protobuf/GeneratedMessageLite$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null containingTypeDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p4}, Lcom/google/protobuf/GeneratedMessageLite$a;->b()Lcom/google/protobuf/c$a;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/c$a;->k:Lcom/google/protobuf/c$a;

    if-ne v0, v1, :cond_1

    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null messageDefaultInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->a:Lcom/google/protobuf/MessageLite;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->c:Lcom/google/protobuf/MessageLite;

    iput-object p4, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->d:Lcom/google/protobuf/GeneratedMessageLite$a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$a;Lcom/google/protobuf/GeneratedMessageLite$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/protobuf/GeneratedMessageLite$b;-><init>(Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/GeneratedMessageLite$a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/protobuf/MessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TContainingType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->a:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$b;->d:Lcom/google/protobuf/GeneratedMessageLite$a;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$a;->a()I

    move-result v0

    return v0
.end method
