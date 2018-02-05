package br.com.mobilemind.j2objc.unit;

import java.util.List;

/**
 * Define o comportamento dos testes unit�rio
 *
 * @author Ricardo Bocchi
 *
 */
public interface TestBehavior {

    /**
     * Metodo que executa quando uma metodo de teste inicia
     */
    void setUp() throws Exception;

    /**
     * Metodo que executa quando uma classe de teste inicia
     */
    void setUpClass() throws Exception;

    /**
     * Metodo que executa quando uma metodo de teste finaliza
     */
    void tearDown() throws Exception;

    /**
     * Metodo que executa quando uma classe de teste finaliza
     */
    void tearDownClass() throws Exception;

    /**
     * Adiciona uma mensagem no test
     *
     * @param message
     */
    void say(String message);

    /**
     * Limpa lista de mensagens dos testes
     * 
     */
    void clearMessages();

    /**
     * Recupera lista de mensagens dos testes
     * 
     * @return 
     */
    List<String> getMessage();

    /**
     * Adiciona context no teste
     * 
     * @param context 
     */
    void setContext(Object context);

    /**
     * Recupera contexto dentro de um teste
     * 
     * @return 
     */
    Object getContext();
}
