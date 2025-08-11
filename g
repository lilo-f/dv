<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loja | Raven Studio</title>
        <link rel="icon" href="../img/raven.ico" type="image/x-icon">

    <meta name="description" content="Loja oficial do Raven Studio - Os melhores produtos para tatuagem">
    <link rel="stylesheet" href="../css/style.css">
        <link rel="stylesheet" href="../css/navbar.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=Teko:wght@400;700&family=Orbitron:wght@500;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
      /* Estilos Premium para o Chatbot - INÍCIO */
       .raven-chat-widget {
    /* Keep position and z-index as is */
    position: fixed;
    bottom: 20px; /* Adjusted slightly up */
    right: 20px; /* Adjusted slightly left */
    z-index: 9999;
}



        .raven-chat-toggle {
           width: 65px; 
    height: 65px; 
            background: linear-gradient(135deg, #8a2be2, #4b0082);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            box-shadow: 0 10px 25px rgba(138, 43, 226, 0.4);
            color: white;
             font-size: 1.6rem;
            border: none;
            position: relative;
            z-index: 100;
        }
.wishlist-btn.active {
    color: #ef4444;
    border-color: #ef4444;
}

.wishlist-btn:hover {
    color: #ef4444;
    border-color: #ef4444;
}
        .raven-chat-toggle:hover {
            transform: scale(1.1) rotate(10deg);
            box-shadow: 0 15px 35px rgba(138, 43, 226, 0.6);
        }

        .pulse-ring {
            position: absolute;
            width: 100%;
            height: 100%;
            border: 2px solid rgba(255, 255, 255, 0.3);
            border-radius: 50%;
            animation: pulse 2s infinite;
            opacity: 0;
        }

        @keyframes pulse {
            0% { transform: scale(0.8); opacity: 0.7; }
            70% { transform: scale(1.3); opacity: 0; }
            100% { transform: scale(0.8); opacity: 0; }
        }

        .raven-chat-container {
            position: absolute;
            bottom: 80px; /* Adjusted to match new toggle height */
    right: 0;
    width: 300px; /* Slightly narrower */
    height: 450px;
            background: #0f0f0f;
            border-radius: 20px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.8);
            display: none;
            flex-direction: column;
            border: 1px solid rgba(138, 43, 226, 0.5);
            overflow: hidden;
            transform: translateY(20px);
            opacity: 0;
            transition: all 0.4s ease;
            z-index: 99;
        }

        .raven-chat-container.active {
            display: flex;
            transform: translateY(0);
            opacity: 1;
        }

        .raven-chat-header {
            padding: 15px 20px;
            background: linear-gradient(to right, #1a1a1a, #2a2a2a);
            display: flex;
            align-items: center;
            gap: 15px;
            border-bottom: 1px solid rgba(138, 43, 226, 0.3);
            position: relative;
        }

        .artist-avatar {
            width: 50px;
            height: 50px;
            border-radius: 50%;
            overflow: hidden;
            border: 2px solid #8a2be2;
            box-shadow: 0 0 15px rgba(138, 43, 226, 0.5);
        }

        .artist-avatar img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        .chat-title {
            flex: 1;
        }

        .chat-title h4 {
            margin: 0;
            font-family: 'Bebas Neue', cursive;
            font-size: 1.3rem;
            color: white;
            letter-spacing: 1px;
        }

        .status-indicator {
            display: flex;
            align-items: center;
            gap: 5px;
            margin-top: 3px;
        }

        .status-indicator span {
            font-family: 'Orbitron', sans-serif;
            font-size: 0.7rem;
            color: #ccc;
        }

        .pulse-dot {
            width: 8px;
            height: 8px;
            background: #00ff00;
            border-radius: 50%;
            animation: pulse-dot 2s infinite;
        }

        @keyframes pulse-dot {
            0% { box-shadow: 0 0 0 0 rgba(0, 255, 0, 0.7); }
            70% { box-shadow: 0 0 0 10px rgba(0, 255, 0, 0); }
            100% { box-shadow: 0 0 0 0 rgba(0, 255, 0, 0); }
        }

        .raven-chat-close {
            background: none;
            border: none;
            color: #8a2be2;
            cursor: pointer;
            font-size: 1.3rem;
            transition: all 0.3s ease;
            width: 30px;
            height: 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
        }

        .raven-chat-close:hover {
            background: rgba(138, 43, 226, 0.2);
            color: white;
            transform: rotate(90deg);
        }

        .raven-chat-content {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
            background: linear-gradient(to bottom, #121212, #0a0a0a);
            scrollbar-width: thin;
            scrollbar-color: #8a2be2 #1a1a1a;
        }

        .raven-chat-content::-webkit-scrollbar {
            width: 6px;
        }

        .raven-chat-content::-webkit-scrollbar-track {
            background: #1a1a1a;
        }

        .raven-chat-content::-webkit-scrollbar-thumb {
            background-color: #8a2be2;
            border-radius: 3px;
        }

        .welcome-message {
            margin-bottom: 20px;
        }

        .bot-message {
            background: rgba(138, 43, 226, 0.15);
            padding: 15px;
            border-radius: 15px;
            border-top-left-radius: 5px;
            max-width: 80%;
            position: relative;
            animation: fadeIn 0.5s ease-out;
            border: 1px solid rgba(138, 43, 226, 0.3);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(10px); }
            to { opacity: 1; transform: translateY(0); }
        }

        @keyframes fadeInUp {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }

        .bot-message p {
            margin: 0;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            color: #ddd;
            line-height: 1.5;
        }

        .message-time {
            display: block;
            font-size: 0.7rem;
            color: #8a2be2;
            margin-top: 8px;
            font-family: 'Orbitron', sans-serif;
        }

        .chat-options-container {
            margin-top: 15px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        .category-grid {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            gap: 15px;
        }

        .category-card {
            background: rgba(30, 30, 30, 0.8);
            border: 1px solid rgba(138, 43, 226, 0.3);
            border-radius: 12px;
            padding: 15px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: all 0.3s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            height: 100px;
            box-shadow: 0 4px 10px rgba(0,0,0,0.3);
        }

        .category-card:hover {
            background: rgba(138, 43, 226, 0.2);
            transform: translateY(-5px);
            box-shadow: 0 10px 20px rgba(138, 43, 226, 0.3);
            border-color: #8a2be2;
        }

        .category-card i {
            font-size: 1.8rem;
            color: #8a2be2;
            margin-bottom: 10px;
            transition: all 0.3s ease;
        }

        .category-card:hover i {
            transform: scale(1.2);
            color: white;
        }

        .category-card span {
            font-family: 'Bebas Neue', cursive;
            font-size: 1.1rem;
            color: white;
            letter-spacing: 1px;
            text-align: center;
        }

        .back-button {
            margin-bottom: 15px;
            text-align: left; /* Alinha o botão à esquerda */
        }

        .back-button button {
            background: none;
            border: none;
            color: #8a2be2;
            cursor: pointer;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            display: inline-flex; /* Usa inline-flex para o alinhamento de ícone e texto */
            align-items: center;
            gap: 5px;
            padding: 8px 12px; /* Aumenta o padding para melhor clique */
            border-radius: 5px;
            transition: all 0.3s ease;
        }

        .back-button button:hover {
            background: rgba(138, 43, 226, 0.1);
            color: white; /* Muda a cor do texto no hover */
        }

        #ravenQuestionsList {
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .question-card {
            background: rgba(30, 30, 30, 0.8);
            border: 1px solid rgba(138, 43, 226, 0.3);
            border-radius: 10px;
            padding: 12px 15px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .question-card:hover {
            background: rgba(138, 43, 226, 0.2);
            border-color: #8a2be2;
            transform: translateX(3px); /* Pequeno movimento no hover */
        }

        .question-card p {
            margin: 0;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            color: #ddd;
        }

        .answer-container {
            background: rgba(30, 30, 30, 0.8);
            border-left: 3px solid #8a2be2;
            border-radius: 0 10px 10px 0;
            padding: 15px;
            margin-bottom: 20px;
            animation: slideIn 0.5s ease-out;
            box-shadow: 0 5px 15px rgba(0,0,0,0.4);
        }

        @keyframes slideIn {
            from { opacity: 0; transform: translateX(20px); }
            to { opacity: 1; transform: translateX(0); }
        }

        .answer-container h5 {
            color: #8a2be2;
            font-family: 'Bebas Neue', cursive;
            font-size: 1.1rem;
            margin: 0 0 10px 0;
            letter-spacing: 1px;
        }

       .answer-container p {
    font-family: 'Open Sans', sans-serif; /* A more common and readable font */
    font-size: 0.95rem; /* Slightly larger for better readability */
    color: #e0e0e0; /* Slightly lighter for better contrast */
    line-height: 1.7; /* Increased line height for better spacing */
    margin: 0;
}

        .raven-primary-btn {
            width: 100%;
            background: linear-gradient(135deg, #8a2be2, #4b0082);
            color: white;
            padding: 12px;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-family: 'Bebas Neue', cursive;
            font-size: 1.1rem;
            letter-spacing: 1px;
            margin-top: 20px;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            box-shadow: 0 5px 15px rgba(138, 43, 226, 0.3);
        }

        .raven-primary-btn:hover {
            background: linear-gradient(135deg, #4b0082, #8a2be2);
            transform: translateY(-2px);
            box-shadow: 0 8px 20px rgba(138, 43, 226, 0.5);
        }

        /* Responsividade */
@media (max-width: 480px) {
    .raven-chat-container {
        width: 90vw;
        right: 5vw;
        height: 65vh; /* Adjusted for mobile */
        bottom: 15px;
    }

    .raven-chat-toggle {
        width: 55px; /* Even smaller for mobile */
        height: 55px;
        font-size: 1.3rem;
    }

            .category-grid {
                grid-template-columns: 1fr; /* Coluna única para mobile */
            }

            .raven-chat-content {
                padding: 15px; /* Padding ajustado para mobile */
            }
        }
        /* Estilos Premium para o Chatbot - FIM */
        /* Estilo para os pontos */
.points-container {
    display: flex;
    align-items: center;
    gap: 0.5rem;
    margin-bottom: 1rem;
    background: rgba(255, 215, 0, 0.15);
    padding: 0.5rem 1rem;
    border-radius: 8px;
    border: 1px solid rgba(255, 215, 0, 0.3);
    animation: pulse-gold 2s infinite;
}

.points-value {
    font-family: 'Bebas Neue', cursive;
    color: #FFD700;
    font-size: 1.5rem;
    text-shadow: 0 0 10px rgba(255, 215, 0, 0.5);
}

.points-icon {
    color: #FFD700;
    font-size: 1.2rem;
    animation: bounce 2s infinite;
}

@keyframes pulse-gold {
    0% { box-shadow: 0 0 0 0 rgba(255, 215, 0, 0.2); }
    70% { box-shadow: 0 0 0 10px rgba(255, 215, 0, 0); }
    100% { box-shadow: 0 0 0 0 rgba(255, 215, 0, 0); }
}

@keyframes bounce {
    0%, 100% { transform: translateY(0); }
    50% { transform: translateY(-5px); }
}
        /* Efeitos de fundo */
     
        .shop-bg {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: radial-gradient(ellipse at bottom, #0a0a0a 0%, #000000 100%);
    z-index: -2;
}

        .shop-particles {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            opacity: 0.15;
        }

        /* Container principal */
        .shop-main {
            min-height: 100vh;
            padding: 100px 2rem 2rem;
            position: relative;
            max-width: 1400px;
            margin: 0 auto;
        }

        /* Cabeçalho */
        .shop-header {
            text-align: center;
            margin-bottom: 3rem;
        }

        .shop-header h1 {
            font-family: 'Bebas Neue', cursive;
            font-size: 3.5rem;
            color: #3b82f6;
            text-shadow: 0 0 15px rgba(59, 130, 246, 0.5);
            letter-spacing: 2px;
            margin-bottom: 0.5rem;
        }

        .shop-header p {
            color: #d1d5db;
            font-family: 'Orbitron', sans-serif;
            font-size: 1rem;
            letter-spacing: 0.5px;
            max-width: 700px;
            margin: 0 auto;
        }

        /* Layout da loja */
        .shop-content {
            display: grid;
            grid-template-columns: 280px 1fr;
            gap: 2.5rem;
        }

        /* Filtros */
        .shop-filters {
            background: rgba(15, 15, 15, 0.9);
            border-radius: 20px;
            padding: 2rem;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(59, 130, 246, 0.3);
            backdrop-filter: blur(10px);
            height: fit-content;
            position: sticky;
            top: 120px;
            transition: all 0.5s ease;
        }

        .shop-filters:hover {
            border-color: #3b82f6;
            box-shadow: 0 10px 40px rgba(59, 130, 246, 0.4);
        }

        .filter-group {
            margin-bottom: 2rem;
        }

        .filter-group h3 {
            font-family: 'Teko', sans-serif;
            color: #3b82f6;
            font-size: 1.5rem;
            margin-bottom: 1rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .filter-options {
            display: flex;
            flex-direction: column;
            gap: 0.8rem;
        }

        .filter-option {
            display: flex;
            align-items: center;
            gap: 0.8rem;
        }

        .filter-option input {
            accent-color: #3b82f6;
        }

        .filter-option label {
            font-family: 'Orbitron', sans-serif;
            color: #d1d5db;
            font-size: 0.9rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .filter-option label:hover {
            color: #3b82f6;
        }

        .price-range {
            width: 100%;
            margin-top: 1rem;
        }

        .price-values {
            display: flex;
            justify-content: space-between;
            margin-top: 0.5rem;
            font-family: 'Orbitron', sans-serif;
            color: #d1d5db;
            font-size: 0.9rem;
        }

        .filter-buttons {
            display: flex;
            gap: 1rem;
            margin-top: 1.5rem;
        }

        .filter-btn {
            flex: 1;
            padding: 0.8rem;
            background: rgba(59, 130, 246, 0.1);
            border: 1px solid rgba(59, 130, 246, 0.5);
            color: #3b82f6;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            cursor: pointer;
            transition: all 0.3s ease;
            border-radius: 8px;
        }

        .filter-btn:hover {
            background: rgba(59, 130, 246, 0.2);
            border-color: #3b82f6;
        }

        .filter-btn.apply {
            background: linear-gradient(135deg, #3b82f6 0%, #22c55e 100%);
            color: #000;
            font-weight: bold;
        }

        .filter-btn.apply:hover {
            background: #3b82f6;
        }

        /* Produtos */
        .shop-products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
            gap: 2rem;
        }

        .product-card {
            background: rgba(15, 15, 15, 0.9);
            border-radius: 15px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(59, 130, 246, 0.3);
            backdrop-filter: blur(10px);
            transition: all 0.5s ease;
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-10px);
            border-color: #3b82f6;
            box-shadow: 0 15px 40px rgba(59, 130, 246, 0.4);
        }

        .product-badge {
            position: absolute;
            top: 15px;
            right: 15px;
            background: linear-gradient(135deg, #3b82f6 0%, #22c55e 100%);
            color: #000;
            font-family: 'Bebas Neue', cursive;
            font-size: 0.9rem;
            padding: 0.3rem 0.8rem;
            border-radius: 20px;
            z-index: 2;
        }

        .product-image {
            height: 250px;
            overflow: hidden;
            position: relative;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: all 0.5s ease;
        }

        .product-card:hover .product-image img {
            transform: scale(1.1);
        }

        .product-info {
            padding: 1.5rem;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }

        .product-category {
            font-family: 'Orbitron', sans-serif;
            color: #3b82f6;
            font-size: 0.8rem;
            margin-bottom: 0.5rem;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .product-title {
            font-family: 'Teko', sans-serif;
            color: white;
            font-size: 1.8rem;
            margin-bottom: 0.8rem;
            line-height: 1;
        }

        .product-description {
            font-family: 'Orbitron', sans-serif;
            color: #d1d5db;
            font-size: 0.9rem;
            margin-bottom: 1.5rem;
            flex-grow: 1;
        }

        .product-price {
            font-family: 'Bebas Neue', cursive;
            color: white;
            font-size: 1.8rem;
            margin-bottom: 1.5rem;
        }

        .product-price .old-price {
            text-decoration: line-through;
            color: #d1d5db;
            font-size: 1.2rem;
            margin-left: 0.5rem;
            opacity: 0.7;
        }

        .product-actions {
            display: flex;
            gap: 1rem;
        }

        .add-to-cart {
            flex: 1;
            padding: 0.8rem;
            background: linear-gradient(135deg, #3b82f6 0%, #22c55e 100%);
            border: none;
            border-radius: 8px;
            color: #000;
            font-family: 'Bebas Neue', cursive;
            font-size: 1.1rem;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }

        .add-to-cart:hover {
            background: #3b82f6;
            transform: translateY(-2px);
        }

        .wishlist-btn {
            width: 45px;
            height: 45px;
            background: rgba(30, 30, 30, 0.8);
            border: 1px solid rgba(59, 130, 246, 0.5);
            border-radius: 8px;
            color: #3b82f6;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.2rem;
        }

        .wishlist-btn:hover {
            background: rgba(59, 130, 246, 0.1);
            border-color: #3b82f6;
            color: #ef4444;
        }

        .wishlist-btn.active {
            color: #ef4444;
            border-color: #ef4444;
        }

        /* Controles da loja */
        .shop-controls {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
            grid-column: 1 / -1;
        }

        .search-box {
            position: relative;
            flex-grow: 1;
            max-width: 400px;
        }

        .search-box input {
            width: 100%; /* Garante que o input ocupe toda a largura do pai */
            padding: 0.8rem 1rem 0.8rem 3rem;
            background: rgba(30, 30, 30, 0.8);
            border: 1px solid rgba(59, 130, 246, 0.5);
            border-radius: 8px;
            color: white;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            transition: all 0.3s ease;
            box-sizing: border-box; /* Garante que padding e border sejam incluídos na largura */
        }

        .search-box input:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 15px rgba(59, 130, 246, 0.3);
            outline: none;
        }

        .search-box i {
            position: absolute;
            left: 1rem;
            top: 50%;
            transform: translateY(-50%);
            color: #3b82f6;
        }

        .sort-options {
            display: flex;
            align-items: center;
            gap: 1rem;
        }

        .sort-options label {
            font-family: 'Orbitron', sans-serif;
            color: #d1d5db;
            font-size: 0.9rem;
        }

        .sort-options select {
            padding: 0.8rem 1rem;
            background: rgba(30, 30, 30, 0.8);
            border: 1px solid rgba(59, 130, 246, 0.5);
            border-radius: 8px;
            color: white;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .sort-options select:focus {
            border-color: #3b82f6;
            box-shadow: 0 0 15px rgba(59, 130, 246, 0.3);
            outline: none;
        }

        /* Paginação */
        .pagination {
            display: flex;
            justify-content: center;
            gap: 0.5rem;
            margin-top: 3rem;
            grid-column: 1 / -1;
        }

        .page-btn {
            width: 40px;
            height: 40px;
            background: rgba(30, 30, 30, 0.8);
            border: 1px solid rgba(59, 130, 246, 0.5);
            border-radius: 8px;
            color: #d1d5db;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            cursor: pointer;
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .page-btn:hover {
            background: rgba(59, 130, 246, 0.1);
            border-color: #3b82f6;
            color: white;
        }

        .page-btn.active {
            background: linear-gradient(135deg, #3b82f6 0%, #22c55e 100%);
            border-color: transparent;
            color: #000;
            font-weight: bold;
        }

        .page-btn.disabled {
            opacity: 0.5;
            cursor: not-allowed;
        }
        
        /* Botão para abrir o filtro no mobile */
        .filter-toggle-btn {
            display: none; /* Escondido por padrão em desktop */
            padding: 0.8rem 1.2rem;
            background: rgba(59, 130, 246, 0.1);
            border: 1px solid rgba(59, 130, 246, 0.5);
            color: #3b82f6;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            cursor: pointer;
            transition: all 0.3s ease;
            border-radius: 8px;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
        }
        .filter-toggle-btn:hover {
            background: rgba(59, 130, 246, 0.2);
            border-color: #3b82f6;
        }

        /* Botão para fechar o filtro no mobile */
        .filter-close-btn {
            background: none;
            border: none;
            color: #d1d5db;
            font-size: 1.5rem;
            cursor: pointer;
            position: absolute;
            top: 1rem;
            right: 1rem;
            z-index: 1002; /* Acima do overlay */
        }
        .filter-close-btn:hover {
            color: #3b82f6;
        }

        /* Overlay para o filtro mobile */
        #filter-overlay {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.6);
            z-index: 999; /* Abaixo do filtro, acima do conteúdo */
            display: none; /* Escondido por padrão */
            opacity: 0;
            transition: opacity 0.3s ease-out;
        }
        #filter-overlay.active {
            display: block;
            opacity: 1;
        }

        /* Responsivo */
        @media (max-width: 1024px) {
            .shop-content {
                /* Changed to allow products full width or smaller columns, filters are off-canvas now */
                grid-template-columns: 1fr; /* Products take full width, filters are not in grid flow here */
                gap: 1.5rem; /* Reduced gap for mobile */
            }

            .shop-filters {
                /* Default desktop styles for filters apply until 768px. Below, it becomes off-canvas */
                position: sticky; /* Revert to sticky for grid flow */
                top: 100px;
                margin-bottom: 0;
                padding: 1rem;
                border-radius: 15px;
                box-shadow: 0 5px 20px rgba(0, 0, 0, 0.2);
                width: auto;
                max-width: none;
            }

            .shop-products {
                /* Make products smaller and allow two per row */
                grid-template-columns: repeat(auto-fill, minmax(140px, 1fr));
                gap: 1rem; /* Smaller gap between products */
            }

            /* Adjust product card font sizes for smaller cards */
            .product-card .product-title {
                font-size: 1.5rem; /* Smaller title */
            }
            .product-card .product-description {
                font-size: 0.8rem; /* Smaller description */
            }
            .product-card .product-price {
                font-size: 1.5rem; /* Smaller price */
            }
            .product-card .add-to-cart {
                font-size: 1rem; /* Smaller button text */
                padding: 0.6rem; /* Smaller button padding */
            }
            .product-card .wishlist-btn {
                width: 40px;
                height: 40px;
                font-size: 1rem;
            }
            .product-card .product-image {
                height: 180px; /* Smaller image height */
            }
            .product-card .product-info {
                padding: 1rem; /* Smaller padding inside product info */
            }

            .shop-controls {
                flex-direction: column;
                gap: 1.5rem;
                align-items: stretch;
            }

            .search-box {
                max-width: 100%;
            }
            .sort-options {
                flex-direction: column;
                align-items: stretch;
            }
        }

        @media (max-width: 768px) {
            .shop-main {
                padding: 80px 1rem 1rem;
            }

            .shop-header h1 {
                font-size: 2.5rem;
            }

            /* Filtro off-canvas para mobile */
            .shop-filters {
                position: fixed; /* Fixa o filtro na tela */
                top: 60px; /* Alterado: Começa abaixo da navbar */
                left: -300px; /* Esconde o filtro fora da tela */
                bottom: 0;
                width: 280px; /* Largura do painel do filtro */
                z-index: 1001; /* Acima do overlay */
                background: rgba(15, 15, 15, 0.98); /* Fundo mais opaco para o off-canvas */
                padding: 2rem 1.5rem; /* Padding interno */
                box-shadow: 5px 0 15px rgba(0, 0, 0, 0.5);
                border-radius: 0 15px 15px 0; /* Apenas no lado direito */
                transition: left 0.3s ease-out, opacity 0.3s ease-out; /* Transição suave */
                opacity: 0; /* Escondido por padrão */
                visibility: hidden; /* Garante que não é interativo quando escondido */
                display: flex; /* Para flex-direction column dos grupos */
                flex-direction: column;
                overflow-y: auto; /* Para rolagem se o conteúdo for muito grande */
                height: 790px;
            }

            .shop-filters.active {
                left: 0; /* Mostra o filtro */
                opacity: 1;
                visibility: visible;
            }
            
            /* Ajustes internos do filtro para mobile (agora dentro do off-canvas) */
            .shop-filters .filter-group {
                margin-bottom: 1.5rem; /* Ajustado para o off-canvas */
            }

            .shop-filters .filter-group h3 {
                font-size: 1.4rem; /* Um pouco maior que o ajuste anterior, para legibilidade no off-canvas */
                margin-bottom: 0.8rem;
            }

            .shop-filters .filter-option label {
                font-size: 0.9rem;
            }

            .shop-filters .filter-btn {
                padding: 0.7rem;
                font-size: 0.9rem;
            }
            
            /* Botão de toggle do filtro visível em mobile */
            .filter-toggle-btn {
                display: flex; /* Mostra o botão em mobile */
                margin-bottom: 1rem; /* Espaço abaixo do botão */
                width: 100%;
            }

            .shop-controls {
                flex-direction: column; /* Coloca o botão de filtro, pesquisa e ordenação em colunas */
                align-items: stretch; /* Estica os itens para a largura total */
                gap: 1rem; /* Reduz o espaço entre os itens */
            }

            .shop-products {
                grid-template-columns: repeat(auto-fill, minmax(150px, 1fr)); /* Allow two smaller products */
                gap: 1rem; /* Keep smaller gap */
            }

             .product-card .product-image {
                height: 150px; /* Even smaller image height for very small screens */
            }
            .product-card .product-title {
                font-size: 1.3rem;
            }
            .product-card .product-description {
                font-size: 0.75rem;
            }
            .product-card .product-price {
                font-size: 1.3rem;
            }
            .product-card .add-to-cart {
                font-size: 0.9rem;
                padding: 0.5rem;
            }
            .product-card .wishlist-btn {
                width: 35px;
                height: 35px;
                font-size: 0.9rem;
            }
        }

        /* --- Fim dos estilos da Navbar e Carrinho --- */

        /* Animation styles for notifications */
        @keyframes slideIn {
            from { transform: translateX(100%); opacity: 0; }
            to { transform: translateX(0); opacity: 1; }
        }
        @keyframes slideOut {
            from { transform: translateX(0); opacity: 1; }
            to { transform: translateX(100%); opacity: 0; }
        }
        .notification {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #4CAF50; /* Green */
            color: white;
            padding: 15px 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            z-index: 1000;
            font-family: 'Orbitron', sans-serif;
            animation: slideIn 0.3s ease-out forwards;
        }
        .notification.error {
            background-color: #f44336; /* Red */
        }
      
        /* Botão para voltar ao topo */
        .back-to-top {
            position: fixed;
            left: 20px;
            bottom: 20px;
            width: 50px;
            height: 50px;
            background: linear-gradient(45deg, #8a2be2, #4b0082);
            color: white;
            border: none;
            border-radius: 50%;
            cursor: pointer;
            display: none;
            align-items: center;
            justify-content: center;
            font-size: 1.2rem;
            z-index: 999;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
            transition: all 0.3s ease;
        }
        
        .back-to-top:hover {
            transform: translateY(-5px);
            background: linear-gradient(45deg, #4b0082, #8a2be2);
        }
        
        .back-to-top.show {
            display: flex;
        }

        /* Chat Widget Styles */
        .chat-widget {
            position: fixed;
            bottom: 20px;
            right: 20px;
            z-index: 1000;
        }

        .chat-toggle {
            width: 60px;
            height: 60px;
            background: linear-gradient(45deg, #8a2be2, #4b0082);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            transition: transform 0.3s ease;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            color: white;
            font-size: 1.5rem;
            border: none;
        }

        .chat-toggle:hover {
            transform: scale(1.1);
            background: linear-gradient(45deg, #4b0082, #8a2be2);
        }

        .chat-container {
            position: absolute;
            bottom: 80px;
            right: 0;
            width: 350px;
            height: 450px;
            background: #1a1a1a;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.7);
            display: none;
            flex-direction: column;
            border: 1px solid rgba(255, 255, 255, 0.1);
            overflow: hidden;
        }

        .chat-container.active {
            display: flex;
        }

        .chat-header {
            padding: 1rem;
            background: linear-gradient(45deg, #4b0082, #8a2be2);
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-bottom: 1px solid rgba(255, 255, 255, 0.1);
        }

        .chat-title {
            display: flex;
            align-items: center;
            gap: 0.5rem;
            color: white;
        }

        .chat-title i {
            color: #fff;
        }

        .chat-title h4 {
            font-size: 1rem;
            margin: 0;
            font-family: 'Teko', sans-serif;
            font-weight: 500;
            letter-spacing: 1px;
        }

        .chat-title span {
            font-size: 0.8rem;
            color: #ccc;
            font-family: 'Teko', sans-serif;
        }

        .chat-close {
            background: none;
            border: none;
            color: #fff;
            cursor: pointer;
            font-size: 1.2rem;
        }

        .chat-content {
            flex: 1;
            padding: 1rem;
            overflow-y: auto;
            background-color: #121212;
        }

        .chat-categories p {
            color: #ccc;
            margin-bottom: 1rem;
            font-size: 0.9rem;
            font-family: 'Teko', sans-serif;
        }

        .category-buttons {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }

        .category-btn {
            padding: 0.75rem;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 8px;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-align: left;
            font-family: 'Teko', sans-serif;
            font-size: 1.1rem;
            border: none;
        }

        .category-btn:hover {
            background: rgba(138, 43, 226, 0.3);
        }

        .back-button {
            margin-bottom: 1rem;
        }

        .back-button button {
            background: none;
            border: none;
            color: #8a2be2;
            cursor: pointer;
            font-size: 0.9rem;
            font-family: 'Teko', sans-serif;
            padding: 0;
        }

        .back-button button:hover {
            text-decoration: underline;
        }

        .question-btn {
            width: 100%;
            padding: 0.75rem;
            background: rgba(255, 255, 255, 0.05);
            border: 1px solid rgba(255, 255, 255, 0.1);
            border-radius: 8px;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-align: left;
            margin-bottom: 0.5rem;
            font-size: 0.9rem;
            border: none;
            font-family: 'Teko', sans-serif;
        }

        .question-btn:hover {
            background: rgba(138, 43, 226, 0.3);
        }

        .answer-content {
            background: rgba(255, 255, 255, 0.05);
            padding: 1rem;
            border-radius: 8px;
            margin-bottom: 1rem;
            color: #ccc;
            border: 1px solid rgba(255, 255, 255, 0.1);
        }

        .answer-content h5 {
            color: #8a2be2;
            margin-bottom: 0.5rem;
            font-size: 0.9rem;
            font-family: 'Teko', sans-serif;
        }

        .answer-content p {
            font-size: 0.9rem;
            line-height: 1.5;
            font-family: 'Teko', sans-serif;
        }

        .btn-primary {
            width: 100%;
            background: linear-gradient(45deg, #8a2be2, #4b0082);
            color: white;
            padding: 0.75rem;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-weight: bold;
            transition: transform 0.3s ease;
            margin-top: 1rem;
            font-family: 'Teko', sans-serif;
            font-size: 1.1rem;
        }

        .btn-primary:hover {
            transform: scale(1.02);
            background: linear-gradient(45deg, #4b0082, #8a2be2);
        }

        #questions-list {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }

        @media (max-width: 480px) {
            .chat-container {
                width: 280px;
                right: -10px;
            }
            
            .back-to-top {
                left: 10px;
                bottom: 10px;
                width: 40px;
                height: 40px;
                font-size: 1rem;
            }
        }
    
    </style>
</head>
<body>
<header>
  
    <nav class="navbar">
        <div class="nav-container">
            <a href="index.html" class="nav-brand">
                <img src="../img/Logo.png" alt="Raven Studio Logo" class="brand-logo">
                <span class="brand-text">RAVEN     </span>
            </a>

            <ul class="nav-menu" id="navMenu">
     <li><a href="../pages/home.html" class="nav-link "><i class="fas fa-home"></i> Início</a></li>
                <li><a href="../pages/loja.html"  class="nav-link active"><i class="fas fa-store"></i> Loja</a></li>
                <li><a href="../pages/artists.html"  class="nav-link"><i class="fas fa-star"></i> Artistas</a></li>
                <li ><a href="../pages/contato.html" class="nav-link"><i class="fas fa-envelope"></i> Contato</a></li>
                <li ><a href="../pages/blog.html" class="nav-link"><i class="fas fa-blog"></i> Blog</a></li>
                <li ><a href="../pages/game.html"  class="nav-link"><i class="fas fa-gamepad"></i>Game</a></li>
                <li > <a href="../pages/carrinho.html" class="nav-icon cart-icon" aria-label="Carrinho de Compras">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count" id="cart-count">0</span>
                </a></li>
            </ul>

            <div class="nav-icons">
               
               
                <a href="../pages/user.html" class="nav-icon user-icon" aria-label="Perfil do Usuário">
                    <i class="fas fa-user-circle" id="nav-user-icon"></i>
                    <img src="" alt="Avatar do Usuário" class="nav-user-avatar" id="nav-user-avatar" style="display: none;">
                </a>
            </div>

            <button class="nav-toggle" id="navToggle" aria-label="Abrir Menu de Navegação">
                <i class="fas fa-bars"></i>
            </button>
        </div>
    </nav>
</header>
    <div class="shop-bg"></div>
    <div class="shop-particles"></div>

    <main class="shop-main">
        <header class="shop-header">
            <h1>Nossos Produtos</h1>
            <p>Explore nossa vasta seleção de produtos de tatuagem, desde tintas vibrantes até máquinas de última geração e equipamentos de segurança. Encontre tudo o que você precisa para elevar sua arte.</p>
        </header>

        <div class="shop-content">
            <aside class="shop-filters" id="mobile-offcanvas-filter">
                <button class="filter-close-btn" id="filter-close-btn"><i class="fas fa-times"></i></button>
                <div class="filter-group">
                    <h3>Categorias</h3>
                    <div class="filter-options">
                        <div class="filter-option">
                            <input type="checkbox" id="category-all" value="all" checked>
                            <label for="category-all">Todas</label>
                        </div>
                        <div class="filter-option">
                            <input type="checkbox" id="category-machines" value="machines">
                            <label for="category-machines">Máquinas de Tatuagem</label>
                        </div>
                        <div class="filter-option">
                            <input type="checkbox" id="category-inks" value="inks">
                            <label for="category-inks">Tintas</label>
                        </div>
                        <div class="filter-option">
                            <input type="checkbox" id="category-needles" value="needles">
                            <label for="category-needles">Agulhas</label>
                        </div>
                        <div class="filter-option">
                            <input type="checkbox" id="category-accessories" value="accessories">
                            <label for="category-accessories">Acessórios</label>
                        </div>
                        <div class="filter-option">
    <input type="checkbox" id="category-kits" value="kits">
    <label for="category-kits">Kits</label>
</div>
                    </div>
                </div>

                <div class="filter-group">
                    <h3>Preço</h3>
                    <input type="range" id="price-range" min="0" max="1000" value="1000" class="price-range">
                    <div class="price-values">
                        <span>R$0</span>
                        <span id="max-price-display">R$1000</span>
                    </div>
                </div>

                <div class="filter-buttons">
                    <button class="filter-btn apply" id="apply-filters">Aplicar Filtros</button>
                    <button class="filter-btn" id="clear-filters">Limpar</button>
                </div>
            </aside>

            <section class="shop-main-content">
                <div class="shop-controls">
                    <button class="filter-toggle-btn" id="filter-toggle-btn"><i class="fas fa-filter"></i> Filtros</button>
                    <div class="search-box">
                        <i class="fas fa-search"></i>
                        <input type="text" id="search-input" placeholder="Pesquisar produtos...">
                    </div>
                    <div class="sort-options">
                        <label for="sort-by">Ordenar por:</label>
                        <select id="sort-by">
                            <option value="default">Relevância</option>
                            <option value="price-asc">Preço: Menor para Maior</option>
                            <option value="price-desc">Preço: Maior para Menor</option>
                            <option value="name-asc">Nome: A-Z</option>
                            <option value="name-desc">Nome: Z-A</option>
                        </select>
                    </div>
                </div>
                <div class="shop-products" id="product-grid">
                    </div>
                <div id="no-results-message" style="display: none; text-align: center; color: #d1d5db; font-family: 'Teko', sans-serif; font-size: 1.8rem; margin-top: 3rem;">
                    Nenhum item encontrado. Tente ajustar os filtros!
                </div>
                <div class="pagination" id="pagination">
                    </div>
            </section>
        </div>
    </main>
    
    <div id="filter-overlay"></div> <button class="back-to-top" id="backToTop" title="Voltar ao topo">
        <i class="fas fa-arrow-up"></i>
    </button>

       <div class="raven-chat-widget">
    <button class="raven-chat-toggle" id="ravenChatToggle" aria-expanded="false" aria-controls="ravenChatContainer" aria-label="Abrir ou fechar o chatbot">
        <div class="pulse-ring"></div>
        <i class="fas fa-comment-dots"></i>
    </button>
    <div class="raven-chat-container" id="ravenChatContainer" role="dialog" aria-modal="true" aria-labelledby="chatTitle">
        <div class="raven-chat-header">
            <div class="artist-avatar">
                <img src="../img/Logo.png" alt="Logo Raven Studio Chatbot">
            </div>
            <div class="chat-title">
                <h4 id="chatTitle">Raven Tattoo Bot</h4>
                <div class="status-indicator">
                    <span class="pulse-dot"></span>
                    <span>Online</span>
                </div>
            </div>
            <button class="raven-chat-close" id="ravenChatClose" aria-label="Fechar Chat">
                <i class="fas fa-times"></i>
            </button>
        </div>
        <div class="raven-chat-content" id="ravenChatContent">
            <div class="welcome-message">
                <div class="bot-message" role="alert" aria-live="polite">
                    <p>Olá! Sou o assistente virtual do Raven Studio. Escolha uma opção abaixo para começar:</p>
                    <span class="message-time" id="welcomeMessageTime"></span>
                </div>
            </div>

            <div class="chat-options-container">
                <div class="chat-categories" id="ravenChatCategories">
                    <div class="category-grid">
                        <button class="category-card" onclick="showRavenCategory('precos')" aria-label="Perguntas sobre Preços">
                            <i class="fas fa-tag"></i>
                            <span>Preços</span>
                        </button>
                        <button class="category-card" onclick="showRavenCategory('dor')" aria-label="Perguntas sobre Nível de Dor">
                            <i class="fas fa-bolt"></i>
                            <span>Nível de Dor</span>
                        </button>
                        <button class="category-card" onclick="showRavenCategory('procedimento')" aria-label="Perguntas sobre Procedimento">
                            <i class="fas fa-clinic-medical"></i>
                            <span>Procedimento</span>
                        </button>
                        <button class="category-card" onclick="showRavenCategory('cuidados')" aria-label="Perguntas sobre Cuidados">
                            <i class="fas fa-heartbeat"></i>
                            <span>Cuidados</span>
                        </button>
                        <button class="category-card" onclick="showRavenCategory('estilos')" aria-label="Perguntas sobre Estilos de Tatuagem">
                            <i class="fas fa-paint-brush"></i>
                            <span>Estilos</span>
                        </button>
                        <button class="category-card" onclick="showRavenCategory('agendamento')" aria-label="Perguntas sobre Agendamento">
                            <i class="fas fa-calendar-check"></i>
                            <span>Agendamento</span>
                        </button>
                    </div>
                </div>

                <div class="chat-questions" id="ravenChatQuestions" style="display: none;">
                    <div class="back-button">
                        <button onclick="showRavenCategories()" aria-label="Voltar para as categorias">
                            <i class="fas fa-arrow-left"></i> Voltar
                        </button>
                    </div>
                    <div id="ravenQuestionsList" role="list"></div>
                </div>

                <div class="chat-answers" id="ravenChatAnswers" style="display: none;">
                    <div class="back-button">
                        <button onclick="showRavenQuestions()" aria-label="Voltar para as perguntas da categoria">
                            <i class="fas fa-arrow-left"></i> Voltar
                        </button>
                    </div>
                    <div id="ravenAnswerContent" aria-live="polite" aria-atomic="true"></div>
                    <button class="raven-primary-btn" onclick="showRavenCategories()" aria-label="Iniciar nova consulta ou voltar ao início">
                        <i class="fas fa-redo"></i> Nova Consulta
                    </button>
                </div>
            </div>
        </div>
    </div>
</div> 



<footer class="footer">
        <div class="container">
            <div class="footer-content">
                <div class="footer-brand">
                    <div class="brand-logo">
                        <img src="../img/Logo.png" alt="Logo RAVEN" class="brand-logo" style="width: 50px; height: 50px;">
                        <h3>RAVEN STUDIO</h3>
                    </div>
                    <p>Transformando pele em arte desde 2016. Cada tatuagem conta uma história única.</p>
                    <div class="social-icons">
                        <a href="https://www.instagram.com/raven_studio__" class="social-icon" aria-label="Instagram do Raven Studio">
                            <i class="fab fa-instagram"></i>
                        </a>
                    </div>
                </div>
                <div class="footer-links">
                    <h4>LINKS RÁPIDOS</h4>
                    <ul>
                        <li><a href="../pages/artists.html">Artistas</a></li>
                        <li><a href="../pages/agendamento.html">Agendamento</a></li>
                        <li><a href="../pages/loja.html">Loja</a></li>
                        <li><a href="../pages/blog.html">Blog</a></li>
                        <li><a href="../pages/loja.html">Loja</a></li>
                        <li><a href="../pages/contato.html">Contato</a></li>
                    </ul>
                </div>
                <div class="footer-contact">
                    <h4>CONTATO</h4>
                    <div class="footer-contact-item">
                        <i class="fas fa-map-marker-alt" aria-hidden="true"></i>
                        <span>Rua das Artes, 123<br>Vila Madalena - São Paulo, SP</span>
                    </div>
                    <div class="footer-contact-item">
                        <i class="fas fa-phone" aria-hidden="true"></i>
                        <span>(11) 99999-9999</span>
                    </div>
                    <div class="footer-contact-item">
                        <i class="fas fa-envelope" aria-hidden="true"></i>
                        <span>contato@ravenstudio.com</span>
                    </div>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="footer-divider"></div>
                <div class="footer-copyright">
                    <p>© 2024 Raven Studio. Todos os direitos reservados.</p>
                    <p class="footer-love">Feito com <i class="fas fa-heart" aria-hidden="true"></i> para amantes da arte corporal</p>
                </div>
            </div>
        </div>
    </footer>


<div vw class="enabled">
    <div vw-access-button class="active"></div>
    <div vw-plugin-wrapper>
      <div class="vw-plugin-top-wrapper"></div>
    </div>
  </div>
  <script src="https://vlibras.gov.br/app/vlibras-plugin.js"></script>
  <script>
    new window.VLibras.Widget('https://vlibras.gov.br/app');
  </script>

     <script src="../js/user-session.js"></script>

     <div class="product-card">
    <img src="../img/products/tinta1.png" alt="Kit Tatuagem Profissional">
    <h3>Kit Tatuagem Profissional</h3>
    <p>R$ 999,99</p>
    <button class="add-to-cart-btn" data-product-id="1">Adicionar ao Carrinho</button>
</div>

<script>
// ==============================================
// CONFIGURAÇÕES GLOBAIS
// ==============================================
const PRODUCTS_PER_PAGE = 8;
const CART_KEY = 'ravenStudioCart';
const USER_KEY = 'ravenStudioCurrentUser';

// ==============================================
// DADOS DOS PRODUTOS (SIMULADO - SUBSTITUA PELO SEU BANCO DE DADOS)
// ==============================================
const productsData = [
    { id: 1, name: 'Máquina Rotativa Pro', category: 'machines', price: 750, oldPrice: 900, description: 'Máquina rotativa de alta performance para traço e pintura.', image: '../img/products/maquina1.png', badge: 'Oferta' },
    { id: 2, name: 'Tinta Preto Absoluto', category: 'inks', price: 120, description: 'Tinta preta de alta qualidade para sombreamento e preenchimento.', image: '../img/products/tinta1.png' },
    { id: 3, name: 'Kit Agulhas Variadas', category: 'needles', price: 80, description: 'Conjunto de agulhas descartáveis para diversas técnicas.', image: '../img/products/agulhas1.png' },
    { id: 4, name: 'Fonte de Alimentação Digital', category: 'accessories', price: 300, description: 'Fonte digital com display LCD e controle preciso de voltagem.', image: '../img/products/fonte1.png' },
    { id: 5, name: 'Máquina Bobina Clássica', category: 'machines', price: 600, description: 'Máquina de bobina tradicional, perfeita para contornos firmes.', image: '../img/products/bobina1.png'},
    { id: 6, name: 'Tinta Vermelho Escarlate', category: 'inks', price: 100, description: 'Tinta vibrante para realçar suas tatuagens coloridas.', image: '../img/products/tintasumi2.png' },
    { id: 7, name: 'Agulha Magnum Soft Edge', category: 'needles', price: 15, description: 'Agulha Magnum para preenchimentos suaves e uniformes.', image: '../img/products/agulhasoft1.png' },
    { id: 8, name: 'Creme Pós-Tatuagem', category: 'accessories', price: 50, description: 'Creme hidratante e reparador para cicatrização da tatuagem.', image: '../img/products/creme2.png' },
    { id: 9, name: 'Máquina Pen Híbrida', category: 'machines', price: 950, description: 'Máquina estilo caneta, leve e versátil, para todos os estilos.', image: '../img/products/maquinapen1.png', badge: 'Novo' },
    { id: 10, name: 'Tinta Azul Oceano', category: 'inks', price: 110, description: 'Tinta azul intensa, ideal para trabalhos aquáticos e celestiais.', image: '../img/products/tintaazul1.png' },
    { id: 11, name: 'Agulha Round Liner Fina', category: 'needles', price: 12, description: 'Agulha Round Liner para traços finos e detalhes precisos.', image: '../img/products/agulhafina1.png' },
    { id: 12, name: 'Bancada de Trabalho Portátil', category: 'accessories', price: 400, description: 'Bancada dobrável e portátil, ideal para estúdios e convenções.', image: '../img/products/bancada1.png' },
];

// ==============================================
// FUNÇÕES UTILITÁRIAS
// ==============================================

/**
 * Formata preço para R$ (BRL)
 */
function formatPrice(price) {
    return price.toLocaleString('pt-BR', {
        style: 'currency',
        currency: 'BRL',
        minimumFractionDigits: 2
    });
}

/**
 * Mostra notificação na tela
 */
function showNotification(message, type = 'success') {
    const notification = document.createElement('div');
    notification.className = `notification ${type}`;
    notification.innerHTML = `
        <i class="fas fa-${type === 'error' ? 'exclamation-circle' : 'check-circle'}"></i>
        ${message}
    `;
    document.body.appendChild(notification);

    setTimeout(() => {
        notification.style.opacity = '0';
        setTimeout(() => notification.remove(), 300);
    }, 3000);
}

/**
 * Obtém os dados do usuário logado
 */
function getUserSession() {
    try {
        const userData = localStorage.getItem(USER_KEY);
        if (!userData) return null;

        const user = JSON.parse(userData);
        if (!user?.id) return null;

        return {
            id: user.id,
            firstName: user.first_name || user.firstName,
            lastName: user.last_name || user.lastName,
            email: user.email,
            isAdmin: Boolean(user.isAdmin || false),
            points: user.loyalty_points || user.points || 0,
            favorites: user.favorites || [] // Garante que sempre retorne um array
        };
    } catch (e) {
        console.error("Erro ao obter dados do usuário:", e);
        return null;
    }
}

/**
 * Atualiza o contador do carrinho na navbar
 */
function updateCartCounter() {
    const cart = JSON.parse(localStorage.getItem(CART_KEY)) || [];
    const totalItems = cart.reduce((sum, item) => sum + (item.quantity || 1), 0);
    const counter = document.getElementById('cart-count');
    if (counter) counter.textContent = totalItems;
}

// ==============================================
// CLASSE PRINCIPAL DA LOJA
// ==============================================
class RavenShop {
    constructor() {
        this.products = productsData;
        this.filteredProducts = [...productsData];
        this.currentPage = 1;
        this.cart = [];
        this.init();
    }

    // ==============================================
    // INICIALIZAÇÃO
    // ==============================================
    init() {
        this.loadCart();
        this.setupEventListeners();
        this.renderProducts();
        this.renderPagination();
        updateCartCounter();
    }

    // ==============================================
    // GERENCIAMENTO DO CARRINHO
    // ==============================================
    loadCart() {
        try {
            this.cart = JSON.parse(localStorage.getItem(CART_KEY)) || [];
        } catch (e) {
            console.error("Erro ao carregar carrinho:", e);
            this.cart = [];
        }
    }

    saveCart() {
        localStorage.setItem(CART_KEY, JSON.stringify(this.cart));
        updateCartCounter();
    }

    /**
     * Adiciona produto ao carrinho (Frontend + Backend)
     */
    async addToCart(productId) {
        try {
            const user = getUserSession();
            if (!user) {
                showNotification('Você precisa estar logado para adicionar produtos.', 'error');
                window.location.href = 'login.html';
                return;
            }

            const product = this.products.find(p => p.id === productId);
            if (!product) {
                showNotification('Produto não encontrado.', 'error');
                return;
            }

            // 1. Envia para o backend (API)
            const response = await fetch('../api/auth.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    action: 'add_to_cart',
                    product_id: productId,
                    quantity: 1
                })
            });

            const result = await response.json();

            if (result.success) {
                // 2. Atualiza o carrinho localmente
                const existingItem = this.cart.find(item => item.id === productId);
                if (existingItem) {
                    existingItem.quantity += 1;
                } else {
                    this.cart.push({
                        id: product.id,
                        name: product.name,
                        price: product.price,
                        image: product.image,
                        quantity: 1
                    });
                }

                this.saveCart();
                showNotification(`${product.name} adicionado ao carrinho!`);

                // 3. Animação de feedback
                const cartIcon = document.querySelector('.cart-icon');
                if (cartIcon) {
                    cartIcon.classList.add('added');
                    setTimeout(() => cartIcon.classList.remove('added'), 500);
                }
            } else {
                showNotification(result.message || 'Erro ao adicionar ao carrinho.', 'error');
            }
        } catch (error) {
            console.error('Erro ao adicionar ao carrinho:', error);
            showNotification('Erro de conexão com o servidor.', 'error');
        }
    }

    // ==============================================
    // RENDERIZAÇÃO DOS PRODUTOS
    // ==============================================
    renderProducts() {
        const productGrid = document.getElementById('product-grid');
        if (!productGrid) return;

        productGrid.innerHTML = '';

        if (this.filteredProducts.length === 0) {
            productGrid.innerHTML = `
                <div class="no-products">
                    <i class="fas fa-search"></i>
                    <p>Nenhum produto encontrado.</p>
                </div>`;
            return;
        }

        const startIdx = (this.currentPage - 1) * PRODUCTS_PER_PAGE;
        const productsToShow = this.filteredProducts.slice(startIdx, startIdx + PRODUCTS_PER_PAGE);

        productsToShow.forEach(product => {
            const productCard = document.createElement('div');
            productCard.className = 'product-card';
            productCard.innerHTML = this.generateProductHTML(product);
            productGrid.appendChild(productCard);
        });

        this.setupProductInteractions();
    }

generateProductHTML(product) {
    const user = getUserSession();
    const isFavorite = user?.favorites?.includes(product.id) || false;

    return `
        ${product.badge ? `<span class="product-badge">${product.badge}</span>` : ''}
        <div class="product-image">
            <img src="${product.image}" alt="${product.name}" loading="lazy">
        </div>
        <div class="product-info">
            <span class="product-category">${this.getCategoryName(product.category)}</span>
            <h3 class="product-title">${product.name}</h3>
            <p class="product-description">${product.description}</p>
            <div class="product-stock">Disponível: ${product.stock} unidades</div>
            <div class="product-price">
                ${formatPrice(product.price)}
                ${product.oldPrice ? `<span class="old-price">${formatPrice(product.oldPrice)}</span>` : ''}
            </div>
            <div class="points-container">
                <i class="fas fa-coins points-icon"></i>
                <span class="points-value">${Math.floor(product.price)} pts</span>
            </div>
        </div>
        <div class="product-actions">
            <button class="add-to-cart" data-id="${product.id}">
                <i class="fas fa-shopping-cart"></i> Adicionar
            </button>
            <button class="wishlist-btn ${isFavorite ? 'active' : ''}" data-id="${product.id}">
                <i class="fas fa-heart"></i>
            </button>
        </div>
    `;
}
getCategoryName(categoryKey) {
    const categories = {
        'machines': 'Máquinas',
        'inks': 'Tintas',
        'needles': 'Agulhas',
        'accessories': 'Acessórios',
        'kits': 'Kits'
    };
    return categories[categoryKey] || categoryKey;
}
    // ==============================================
    // FILTROS, ORDENAÇÃO E PAGINAÇÃO
    // ==============================================
    filterProducts() {
        const searchTerm = document.getElementById('search-input')?.value.toLowerCase() || '';
        const selectedCategories = Array.from(
            document.querySelectorAll('.filter-option input[type="checkbox"]:checked')
        ).map(cb => cb.value).filter(v => v !== 'all');

        const maxPrice = parseFloat(document.getElementById('price-range')?.value || 10000);
        const sortBy = document.getElementById('sort-by')?.value || 'default';

        this.filteredProducts = this.products.filter(product => {
            const matchesSearch = product.name.toLowerCase().includes(searchTerm) || 
                                product.description.toLowerCase().includes(searchTerm);
            const matchesCategory = selectedCategories.length === 0 || 
                                  selectedCategories.includes(product.category);
            const matchesPrice = product.price <= maxPrice;
            return matchesSearch && matchesCategory && matchesPrice;
        });

        // Ordenação
        if (sortBy === 'price-asc') {
            this.filteredProducts.sort((a, b) => a.price - b.price);
        } else if (sortBy === 'price-desc') {
            this.filteredProducts.sort((a, b) => b.price - a.price);
        } else if (sortBy === 'name-asc') {
            this.filteredProducts.sort((a, b) => a.name.localeCompare(b.name));
        } else if (sortBy === 'name-desc') {
            this.filteredProducts.sort((a, b) => b.name.localeCompare(a.name));
        }

        this.currentPage = 1;
        this.renderProducts();
        this.renderPagination();
    }

    renderPagination() {
        const pagination = document.getElementById('pagination');
        if (!pagination) return;

        pagination.innerHTML = '';
        const totalPages = Math.ceil(this.filteredProducts.length / PRODUCTS_PER_PAGE);

        for (let i = 1; i <= totalPages; i++) {
            const pageBtn = document.createElement('button');
            pageBtn.className = `page-btn ${i === this.currentPage ? 'active' : ''}`;
            pageBtn.textContent = i;
            pageBtn.addEventListener('click', () => {
                this.currentPage = i;
                this.renderProducts();
                window.scrollTo({ top: 0, behavior: 'smooth' });
            });
            pagination.appendChild(pageBtn);
        }
    }

    clearFilters() {
        document.getElementById('search-input').value = '';
        document.querySelectorAll('.filter-option input').forEach(input => {
            input.checked = input.value === 'all';
        });
        document.getElementById('price-range').value = document.getElementById('price-range').max;
        document.getElementById('sort-by').value = 'default';
        this.filterProducts();
    }

    // ==============================================
    // INTERAÇÕES E EVENTOS
    // ==============================================
    setupEventListeners() {
        // Filtros
        document.getElementById('search-input')?.addEventListener('input', () => this.filterProducts());
        document.getElementById('sort-by')?.addEventListener('change', () => this.filterProducts());
        document.getElementById('apply-filters')?.addEventListener('click', () => this.filterProducts());
        document.getElementById('clear-filters')?.addEventListener('click', () => this.clearFilters());

        // Menu mobile
        document.getElementById('nav-toggle')?.addEventListener('click', () => {
            document.getElementById('nav-menu').classList.toggle('active');
        });
    }

setupProductInteractions() {
    // Delegação de eventos para elementos dinâmicos
    document.addEventListener('click', (e) => {
        // Adicionar ao carrinho
        if (e.target.closest('.add-to-cart')) {
            const productId = parseInt(e.target.closest('.add-to-cart').dataset.id);
            this.addToCart(productId);
        }

        // Favoritos
        if (e.target.closest('.wishlist-btn')) {
            const productId = parseInt(e.target.closest('.wishlist-btn').dataset.id);
            this.toggleFavorite(productId);
        }
    });
}
    /**
     * Alterna produto nos favoritos
     */
/**
 * Alterna produto nos favoritos
 */
async toggleFavorite(productId) {
    try {
        const user = getUserSession();
        if (!user) {
            showNotification('Faça login para adicionar favoritos.', 'error');
            window.location.href = 'login.html';
            return;
        }

        const wishlistBtn = document.querySelector(`.wishlist-btn[data-id="${productId}"]`);
        const isFavorite = wishlistBtn.classList.contains('active');
        const action = isFavorite ? 'remove_from_favorites' : 'add_to_favorites';

        // 1. Envia para o backend (API)
        const response = await fetch('../api/auth.php', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify({
                action,
                product_id: productId
            })
        });

        const result = await response.json();

        if (result.success) {
            // 2. Atualiza os favoritos localmente
            let favorites = user.favorites || [];
            if (action === 'add_to_favorites') {
                favorites.push(productId);
            } else {
                favorites = favorites.filter(id => id !== productId);
            }

            // Atualiza o localStorage
            const updatedUser = { ...user, favorites };
            localStorage.setItem(USER_KEY, JSON.stringify(updatedUser));

            // 3. Atualiza a UI
            wishlistBtn.classList.toggle('active');
            
            const message = isFavorite ? 
                'Produto removido dos favoritos' : 
                'Produto adicionado aos favoritos!';
            showNotification(message);

        } else {
            showNotification(result.message || 'Erro ao atualizar favoritos.', 'error');
        }
    } catch (error) {
        console.error('Erro ao atualizar favoritos:', error);
        showNotification('Erro de conexão.', 'error');
    }
}
}

// ==============================================
// INICIALIZAÇÃO DA LOJA
// ==============================================
document.addEventListener('DOMContentLoaded', async () => {
    // Verifica se o usuário está logado
    const user = getUserSession();
    if (user) {
        try {
            // Atualiza os favoritos do usuário
            const response = await fetch('../api/auth.php', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    action: 'get_favorites'
                })
            });
            
            const result = await response.json();
            
            if (result.success) {
                user.favorites = result.favorites || [];
                localStorage.setItem(USER_KEY, JSON.stringify(user));
            }
        } catch (error) {
            console.error('Erro ao carregar favoritos:', error);
        }
    }

    // Inicializa a loja
    window.shop = new RavenShop();
    updateCartCounter();
});
    </script>
</body>
</html>
